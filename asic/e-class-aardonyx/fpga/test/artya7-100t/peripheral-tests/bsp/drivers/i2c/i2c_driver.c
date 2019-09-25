// SPDX-License-Identifier: GPL-2.0-or-later
/*
 *
 *   Copyright (C) 1995-1997 Simon G. Vogl
 *		   1998-2000 Hans Berglund
 *
 * With some changes from Kyösti Mälkki <kmalkki@cc.hut.fi> and
 * Frodo Looijaard <frodol@dds.nl>, and also from Martin Bailey
 * <mbailey@littlefeet-inc.com>
 *
 * Partially rewriten by Oleg I. Vdovikin <vdovikin@jscc.ru> to handle multiple
 * messages, proper stop/repstart signaling during receive, added detect code
 *
 * Partially rewritten by Vinod <g.vinod1993@gmail.com> and Kotteeswaran <kottee.1@gmail.com> for shakti i2c
 *
 *  i2c-algo-pcf.c i2c driver algorithms for PCF8584 adapters was modified to this file.
 */

/***************************************************************************
* Project           			:  shakti devt board
* Name of the file	     		:  i2c_driver.c
* Created date			        :  
* Brief Description of file     :  Demonstartes the working of i2c protocol.
*/

#include "i2c.h"//Includes the definitions of i2c communication protocol//

char get_i2c_shakti(char *addr)
{
#ifdef ASM
	char val;
	printf("\n The address is %p;", (char *) addr);
	asm volatile("lb %0, 0(%1)" : "=r" (val) : "r" (*addr));
	return val;
#else
  return *addr;
#endif
}

void set_i2c_shakti(char *addr, char val)
{
#ifdef ASM
	printf("\n The address is %p; value: %x", (char *) addr, val);
	asm volatile("sb %0, 0(%1)" : : "r" (val), "r" (*addr));
#else
    *addr = val;
#endif
}

void waitfor(unsigned int secs) 
{
	unsigned int time = 0;
	while(time++ < secs);
}

void i2c_start()
{
	set_i2c_shakti(i2c_control, I2C_SHAKTI_START);
}

void i2c_start_eni()
{
	set_i2c_shakti(i2c_control, I2C_SHAKTI_START);
}

void i2c_repstart()
{
	set_i2c_shakti(i2c_control, I2C_SHAKTI_REPSTART);
}

void i2c_repstart_eni()
{
	set_i2c_shakti(i2c_control, I2C_SHAKTI_REPSTART);
}

void i2c_stop()
{
	set_i2c_shakti(i2c_control, I2C_SHAKTI_STOP);
}


void i2c_nack()
{
	set_i2c_shakti(i2c_control, I2C_SHAKTI_NACK);
}


int shakti_init_i2c()
{
   unsigned char temp = 0;
    printf("\tI2C: Initializing the Controller\n");

    /* Doing an initialization sequence as how PCF8584 was supposed to be initialized                                                       */
    /* The Initialization Sequence is as follows                                                                                            */
    /* Reset Minimum 30 Clock Cycles -- Not necessary in our case                                                                           */
    /* Load Byte 80H into Control                                                                                                           */
    /* load Clock Register S2 */ /* We are doing the opposite -- Setting the clock and then the registers -- Doesn't really matter actually */
    /* Send C1H to S1 - Set I2C to Idle mode -- SDA and SCL should be high                                                                  */

    set_i2c_shakti(i2c_prescale,0x1F);  //Setting the I2C clock value to be 1, which will set the clock for module and prescaler clock
    temp = get_i2c_shakti(i2c_prescale);
    set_i2c_shakti(i2c_scl,0x91);  //Setting the I2C clock value to be 1, which will set the clock for module and prescaler clock
    temp = get_i2c_shakti(i2c_scl);
/* Just reading the written value to see if all is well -- Compiler should not optimize this load!!! Compiler can just optimize the store to pointer address followed by load pointer to a register to just an immediate load to the register since clock register is not used anywhere -- but the purpose is lost. Don't give compiler optimizations */

    if((temp | 0x00) != 0x91){
        printf("\tClock initialization failed Write Value: 0x91; read Value: %02x\n", temp);
        return -ENXIO;
    }
    else{
        printf("\tClock successfully initalized\n");
    }


    /* S1=0x80 S0 selected, serial interface off */
    printf("\tSetting Control Register with 0x80 \n");
	set_i2c_shakti(i2c_control, I2C_SHAKTI_PIN);
    printf("\tControl Register Successfully set \n");

    // Reading set control Register Value to ensure sanctity
    printf("\tReading Control Register \n");
    temp = get_i2c_shakti(i2c_control);
    printf("\tControl Register is Written with 0x%x \n", temp);

    if((temp & 0x7f) != 0){
        printf("\tDevice Not Recognized\n");
        return -ENXIO;
    }

    printf("\tWaiting for a specified time\n ");
    waitfor(900); //1 Second software wait -- Should be 900000 but setting to 900 now since simulation is already slow
    printf("\tDone Waiting \n ");

    /* Enable Serial Interface */
    set_i2c_shakti(i2c_control, I2C_SHAKTI_IDLE);
    waitfor(900); //1 Second software wait -- Should be 900000 but setting to 900 now since simulation is already slow
    temp = get_i2c_shakti(i2c_status);
    printf("\tStatus Reg value after sending I2C_SHAKTI_IDLE is : 0x%x \n",temp);

    /* Check to see if I2C is really in Idle and see if we can access the status register -- If not something wrong in initialization. This also verifies if Control is properly written since zero bit will be initialized to zero*/
    if(temp != (I2C_SHAKTI_PIN | I2C_SHAKTI_BB)){
        printf("\tInitialization failed\n");
        return -ENXIO;
    }
    else
        printf("\tAll is well till here \n");

    printf("\tI2C successfully initialized\n");
}

int wait_for_bb()
{

    printf("\tIs bus busy?\n");
	int timeout = DEF_TIMEOUT;
	int status;

	status = get_i2c_shakti(i2c_status);

	while (!(status & I2C_SHAKTI_BB) && --timeout) {
		waitfor(20000); /* wait for 100 us */
		status = get_i2c_shakti(i2c_status);
	}

	if (timeout == 0) {
        printf("\t Bus busy wait - timed out. Resetting\n");
		return ETIMEDOUT;
	}

	return 0;
}

int wait_for_pin(int *status)
{

	int timeout = DEF_TIMEOUT;

	*status = get_i2c_shakti(i2c_status);

	while ((*status & I2C_SHAKTI_PIN) && --timeout) {
		waitfor(10000); /* wait for 100 us */
		*status = get_i2c_shakti(i2c_status);
	}

	if (timeout == 0){
        printf("\tWait for pin timed out\n");
		return ETIMEDOUT;
    }

	return 0;
}

int shakti_sendbytes( const char *buf, int count, int last, int eni)
{
	int wrcount, status, timeout;
    printf("\tStarting Write Transaction -- Did you create tri1 nets for SDA and SCL in verilog?\n");
	for (wrcount=0; wrcount<count; ++wrcount) {
		set_i2c_shakti(i2c_data,buf[wrcount]);
		timeout = wait_for_pin(&status);
		if (timeout) {
            printf("\tTimeout happened - Write did not go through the BFM -- Diagnose\n");
			i2c_stop(); //~
			return EREMOTEIO;
		}
		if (status & I2C_SHAKTI_LRB) { // What error is this?
			i2c_stop();//~
            printf("\tSome status check failing\n");
			return EREMOTEIO;
		}
	}
	if (last){
        printf("\tLast byte sent : Issue a stop\n");
		i2c_stop();
    }
	else{
        printf("\tSending Rep Start and doing some other R/W transaction\n");
		if(!eni)
            i2c_repstart();
        else
            i2c_repstart_eni();
    }

	return wrcount;
}

#ifdef DEBUG
int shakti_readbytes(char *buf, int count, int last)
{
	int i, status;
	int wfp;
    int read_value = 0;
	/* increment number of bytes to read by one -- read dummy byte */
	for (i = 0; i <= count; i++) {
        wfp = wait_for_pin(&status);
		if (wfp) {
			i2c_stop();
            return -1;
		}

		if ((status & I2C_SHAKTI_LRB) && (i != count)) {
			i2c_stop();
			printf("\tNo ack\n");
			return -1;
		}

        if (i)
	{
		buf[i - 1] = get_i2c_shakti(i2c_data);
		printf("\n Read Value: %x", buf[i - 1]);
	}
		else
			get_i2c_shakti(i2c_data); /* dummy read */

		if (i == count - 1) {
			set_i2c_shakti(i2c_control, I2C_SHAKTI_ESO);
		} else if (i == count) {
			if (last)
				i2c_stop();
			else
				i2c_repstart();
		}

		}

	return i-1; //excluding the dummy read
}
#endif


/************************************************************************
* Brief Description     : Performs the i2c protocol configuration. 
* Parameters            : prescalar clock,serial clock.
* Return                : int. 
*************************************************************************/

int i2c_configure(int psc, int sclkFrequency)
{
	unsigned char temp = 0;
	
	printf("\n\tI2C: Initializing the Controller");
	                                       
	 set_i2c_shakti(i2c_prescale, psc); /*	  Setting Prescaler Clock	 */
	
	//Setting the I2C clock value to be 1, which will set the clock for module and prescaler clock //

#ifdef DEBUG	/*	 Verify the above written psc value	 */
	
	temp = get_i2c_shakti(i2c_prescale);//copies the prescalar clock value to the temp variable//
	
	if(temp != psc)
	
	{
		printf("\n\t Error in setting prescaler clock; Wr. Value: 0x%02x; Read Value: 0x%02x", psc, temp);
	}
	
	else
	
	{
		printf("\n\t Prescaler value is written successfully\n");
	}

#endif
	    set_i2c_shakti(i2c_scl, sclkFrequency);/* Set I2C Serial clock frequency */


#ifdef DEBUG  /* Verify the above written serial clock  value */

	temp = get_i2c_shakti(i2c_scl);
/* Just reading the written value to see if all is well -- Compiler should not optimize this load!!! Compiler can just optimize the store to pointer address followed by load pointer to a register to just an immediate load to the register since clock register is not used anywhere -- but the purpose is lost. Don't give compiler optimizations */

	if(temp != sclkFrequency){/*if prescalar clock is not equal to serial clock*/
	
		printf("\n\tClock initialization failed Write Value: 0x%02x; read Value: 0x%02x", sclkFrequency, temp);
		return -ENXIO;
	}
	
	else{
		printf("\tClock successfully initalized\n");
	}
#endif

#ifdef DEBUG
	
	printf("\tSetting Control Register with 0x01 \n");
	
	set_i2c_shakti(i2c_control, 0x01);	// Reading set control Register Value to ensure sanctity//
	
	temp = get_i2c_shakti(i2c_control);//copies the i2c control variable to temp//
	
	printf("\tControl Register Read Value 0x%x \n", temp);
	
#endif

	/* S1=0x80 S0 selected, serial interface off */
	printf("\tSetting Control Register with 0x80 \n");
	set_i2c_shakti(i2c_control, I2C_SHAKTI_PIN);

#ifdef DEBUG
	printf("\tControl Register Successfully set \n");	// Reading set control Register Value to ensure sanctity //
	printf("\tReading Control Register \n");
	temp = get_i2c_shakti(i2c_control);
	printf("\tControl Register is Written with 0x%x \n", temp);
#endif

	if((temp & 0x7f) != 0){
		printf("\tDevice Not Recognized\n");
		return -ENXIO;
	}

	printf("\tWaiting for a specified time\n ");
	waitfor(900); //1 Second software wait -- Should be 900000 but setting to 900 now since simulation is already slow
	printf("\tDone Waiting \n ");

	i2c_stop();

	/* Enable Serial Interface */
	printf("\n Making the I2C chip in idle State");
	set_i2c_shakti(i2c_control, I2C_SHAKTI_IDLE);

	printf("\n\tWaiting for a specified time After setting idle\n ");
	waitfor(900); //1 Second software wait -- Should be 900000 but setting to 900 now since simulation is already slow
	printf("\tDone Waiting \n ");

#ifdef DEBUG
	temp = get_i2c_shakti(i2c_status);
	printf("\tStatus Reg value is : 0x%x \n",temp);

#endif
/* Check to see if I2C is really in Idle and see if we can access the status register.This also verifies if Control is properly written since zero bit will be initialized to zero	 */
	   
	if(temp != (I2C_SHAKTI_PIN | I2C_SHAKTI_BB)){
		printf("\tInitialization failed\n");
		return -ENXIO;
	}

	printf("\tI2C successfully initialized\n");
}
/************************************************************************
* Brief Description     : Performs the intilization of i2c slave. 
* Parameters            : slave address.
* Return                : int. 
*************************************************************************/

int i2c_slave_init(unsigned char slaveAddress)
{
	int timeout;
	unsigned char temp = 0;
	int status = 0;
	printf("\n\tSetting Slave Address : 0x%02x\n", slaveAddress);/* Writes the slave address to I2C controller */
	
	set_i2c_shakti(i2c_data,slaveAddress);
	printf("\tSlave Address set\n");


	temp = get_i2c_shakti(i2c_data); //Reads the slave address from I2C controller
	printf("\tSet slave address read again, which is 0x%x\n",temp);

	if(slaveAddress != (int)temp)
		printf("\tSlave address is not matching; Written Add. Value: 0x%02x; Read Add. Value: 0x%02x\n", slaveAddress, temp);
	
	i2c_start(); //Sending the slave address to the I2C slave

	
	timeout = wait_for_pin(&status);
	if (timeout) {//Asking the controller to send a start signal to initiate the transaction
		printf("\tTimeout happened - Write did not go through the BFM -- Diagnose\n");
		i2c_stop(); //~
		return EREMOTEIO;
	}

	if (status & I2C_SHAKTI_LRB) { 
	    i2c_stop();
		printf("\tSome status check failing\n");
	}
}
/************************************************************************
* Brief Description     : It does the reading or writing from the address specified . 
* Parameters            : starting address.
* Return                : int. 
*************************************************************************/

int SendAddressToReadOrWrite(unsigned int startAddress)
{
	int timeout;
	unsigned char temp = 0;
	int status = 0;

#ifdef _16Bit
	set_i2c_shakti(i2c_data, (startAddress >> 8) & 0xFF);
	timeout = wait_for_pin(&status);
	if (timeout) {
		printf("\tTimeout happened - Write did not go through the BFM -- Diagnose\n");
		i2c_stop(); //~
		return EREMOTEIO;
	}

	if (status & I2C_SHAKTI_LRB) { // What error is this?
		i2c_stop();//~
		printf("\tSome status check failing\n");
		return EREMOTEIO;
	}
#endif

	set_i2c_shakti(i2c_data, (startAddress >> 0) & 0xFF);
	timeout = wait_for_pin(&status);
	if (timeout) {
		printf("\tTimeout happened - Write did not go through the BFM -- Diagnose\n");
		i2c_stop(); //~
		return EREMOTEIO;
	}

	if (status & I2C_SHAKTI_LRB) 
	{ // What error is this?
		i2c_stop();//~
		printf("\tSome status check failing\n");
	}
}
/************************************************************************
* Brief Description     : It does the reading or writing from the address specified . 
* Parameters            : starting address.
* Return                : int. 
*************************************************************************/
int i2c_rw_wait(int *status)
{
	int timeout = DEF_TIMEOUT;

	*status = get_i2c_shakti(i2c_status);

	while ((*status & I2C_SHAKTI_PIN) && --timeout) 
	{
		waitfor(10000); /* wait for 100 us */
		*status = get_i2c_shakti(i2c_status);
	}
	if (timeout == 0){
		printf("\tWait for pin timed out\n");
		return ETIMEDOUT;
	}

	return 0;
}
/**************************************************************************
* Brief Description     : This makes the read or write operation to wait until the count has been completed . 
* Parameters            : count value.
* Return                : int. 
*************************************************************************/

int i2c_datawrite( const char *buf, int count, int last, int eni)
{
	int wrcount, status, timeout;
	int i = 0;

	printf("\tStarting Write Transaction -- Did you create tri1 nets for SDA and SCL in verilog?\n");

	for (i = 0; i < count; ++i)
	{
		printf("\n\t Writing the value 0x%02x into EEPROM", buf[i]);
		set_i2c_shakti(i2c_data, buf[i]);
		if( ETIMEDOUT == i2c_rw_wait(&status))
		{
			printf("\n I2C Write Timed out");
			i2c_stop(); //~
			return EREMOTEIO;
		}
		if (status & I2C_SHAKTI_LRB)
		{
			i2c_stop();//~
			printf("\tSome status check failing\n");
			return EREMOTEIO;
		}
	}

	if (last){
		printf("\n\tLast byte sent : Issue a stop\n");
		i2c_stop();
	}
	else
	{
		printf("\n\tSending Rep Start and doing some other R/W transaction\n");
		if(!eni)
			i2c_repstart();
		else
			i2c_repstart_eni();
	}

	return i;
}
/************************************************************************
* Brief Description     : It does the data reading. 
* Parameters            : count value,ending address.
* Return                : int. 
*************************************************************************/
int i2c_dataread(char *buf, int count, int last)
{
	int i, status;
	int wfp;
	int read_value = 0;

	/* increment number of bytes to read by one -- read dummy byte */
	for (i = -1; i < count; i++)
	{
		if( ETIMEDOUT == i2c_rw_wait(&status))
		{
			printf("\n I2C Read Timed out");
			i2c_stop(); 
			return EREMOTEIO;
		}
		if (status & I2C_SHAKTI_LRB)
		{
			i2c_stop();//~
			printf("\tSome status check failing\n");
			return EREMOTEIO;
		}
		

		if (-1 != i)//Do Dummy Read initially//
		{
			buf[i] = get_i2c_shakti(i2c_data);
			printf("\n\t Read Address Offset: %d; Value: %x", i, buf[i]);
		}
		else
		{
			printf("\n\t Dummy Read Value: 0x%02x", get_i2c_shakti(i2c_data) & 0xFF ); /* dummy read */
		}

		               
		if (i == count - 2)/*send NACK after the penultimate byte*/
		{
			i2c_nack();
			waitfor(10000);
		}

		if (i == count - 1)  	/*send STOP after the last byte*/
		{
			waitfor(10000);
			i2c_stop();
		}
	}
	printf("\n\t Read %d Bytes from EEPROM", i);
	return i; //excluding the dummy read
}
