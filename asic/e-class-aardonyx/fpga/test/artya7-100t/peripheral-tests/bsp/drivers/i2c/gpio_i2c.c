/***************************************************************************
* Project           			:  shakti devt board
* Name of the file	     		:  gpio_i2c.c
* Created date			        :  9.07.2019
* Brief Description of file             :  Performs the I2C operations using gpio pins.
* Name of Author    	                :  Kotteeswaran
* Email ID                              :  kottee.1@gmail.com

    Copyright (C) 2019  IIT Madras. All rights reserved.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

***************************************************************************/
#include "platform.h"
#include "gpio.h"
#include "gpio_i2c.h"
extern void DelayLoop(unsigned long , unsigned long );



//If inout control = 1, output else input
/** @fn static void SetSCLAsOutput()
 * @brief Function for configure GPIO 0 as SCL output.
 *
 * @details This function will be called to make the scl line (defined by I2C_SCL)
*  macro as output.
 *
 * @warning This bit value can be changed as per I2C_SCL macro.
 *
 * @param[in] No input parameters.
 * @param[Out] No output parameters.
 */
static void SetSCLAsOutput()
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DIRECTION_CNTRL_REG);
	write_word(GPIO_DIRECTION_CNTRL_REG, (readData | I2C_SCL) );
	printf("SCL set as output\n");
}

//If inout control = 1, output else input
/**@brief Function for configure GPIO 0 as SCL output.
 *
 * @details This function will be called to make the scl line (defined by I2C_SCL)
*  macro as output.
 *
 * @warning This bit value can be changed as per I2C_SCL macro.
 *
 * @param[in] No input parameters.
 * @param[Out] No output parameters.
 */
static void SetSdaDirection(int inOutCntrl)
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DIRECTION_CNTRL_REG);

	if(inOutCntrl) // output
    {
		write_word(GPIO_DIRECTION_CNTRL_REG, (readData | I2C_SDA) );
		printf("\n\tSDA set as output\n");
	}
    else
    {
		write_word(GPIO_DIRECTION_CNTRL_REG, (readData & ~(I2C_SDA) ) );
		printf("\n\tSDA set as input\n");
	}
}

/** @fn static void start(unsigned char delay)
 * @brief Sending start condition for the I2C.
 *
 * @details Start condition is making SDA low when clock is high.
 *
 * @warning This bit value can be changed as per I2C_SCL macro.
 *
 * @param[in] delay.
 * @param[Out] No output parameters.
 */
static void start(unsigned char delay)
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);

//	sda=1;
	write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) | I2C_SDA | I2C_SCL) );
	DelayLoop(delay, delay);

//		scl=1;
	write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) | I2C_SCL) );
	DelayLoop(delay, delay);

//		sda=0;
	write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) & ~(I2C_SDA)) );
	DelayLoop(delay, delay);

//		scl=0;
	write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) & ~(I2C_SCL) ) );
	DelayLoop(delay, delay);

	printf("\n\tI2C: I2C Start condition sent\n");
}

/** @fn static void stop(unsigned char delay)
 * @brief Sending stop condition for the I2C.
 *
 * @details Stop condition is making SDA high when clock is high.
 *
 * @warning This bit value can be changed as per I2C_SCL macro.
 *
 * @param[in] delay.
 * @param[Out] No output parameters.
 */
static void stop(unsigned char delay)
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
//	sda=0;
	write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) & ~(I2C_SDA)) );
	DelayLoop(delay, delay);

//	scl=1;
	write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) | I2C_SCL) );
	DelayLoop(delay, delay);

//	sda=1;
	write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) | I2C_SDA) );
	DelayLoop(delay, delay);
	printf("\n\tI2C: I2C Start condition sent\n");

}

/** @fn static void I2cWriteByte(unsigned char i, unsigned char delay)
 * @brief Writes a byte to the I2C device.
 *
 * @details Data is put on the SDA Line bit by bit and then makes the
 * SCL from low to high to write..
 *
 * @warning This bit value can be changed as per I2C_SCL macro.
 *
 * @param[in] writeData --> Value that needs to be written.
 * @param[in] delay.
 * @param[Out] No output parameters.
 */
void I2cWriteByte(unsigned char writeData, unsigned char delay)
{
	unsigned char j=0,k;
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
	while(j < 8)
	{
		k = writeData;
		k = ( k << j ) & 0x80;
//		printf("\n\r i: %d; j: %d; k: %d", i, j, k);
//		sda=CY;
		if(k == 0)
		{
			write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) & ~(I2C_SDA)) );
			DelayLoop(delay, delay);
		}
		else
		{
			write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) | I2C_SDA) );
			DelayLoop(delay, delay);
		}

	//	scl=1;
		write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) | I2C_SCL) );
		DelayLoop(delay, delay);


	//	scl=0;
		write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) & ~(I2C_SCL) ) );
		DelayLoop(delay, delay);
		++j;
	}
}

/** @fn static unsigned char I2cReadByte(unsigned char delay)
 * @brief Reads a byte from the I2C device.
 *
 * @details Clock line is made low to high and the slave puts the Data
 *  bit on the SDA line and master stores the value to form a byte.
 *
 * @warning This bit value can be changed as per I2C_SCL macro.
 *
 * @param[in] delay.
 * @param[Out] returns the value of readData .
 */
unsigned char I2cReadByte(unsigned char delay)
{
	unsigned char j = 0, i = 0;
	unsigned char bitValue;
	unsigned char readData = 0;
  unsigned long readGpioData = 0;
	readData = read_word(GPIO_DATA_REG);

//	sda=1;
//Make SDA high
	while(j < 8)
	{
	//	scl=1;
		write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) | I2C_SCL) );
		DelayLoop(delay, delay);

//		d1 = sda;
		readGpioData = read_word(GPIO_DATA_REG)  & I2C_SDA;
		if(readGpioData != 0)
			bitValue = 1;
		else
			bitValue = 0;
	    readData = readData << 1;
		readData = readData | bitValue;
		DelayLoop(delay, delay);

	//	scl=0;
		write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) & ~(I2C_SCL) ) );
		DelayLoop(delay, delay);


		++j;
	}

	return readData;
}

/** @fn static unsigned char ReadAckForWrite(unsigned char delay)
 * @brief After the write operation is done the slave will send Ack
 * if there is slave.
 *
 * @details Clock line is made low to high and the slave puts the Data
 *  bit on the SDA line and master stores the value to form a byte.
 *
 * @warning The code will be in while loop if the slave is not
 * responding.
 *
 * @param[in] delay.
 * @param[Out] NULL.
 */
void ReadAckForWrite(unsigned char delay)
{
	unsigned long readData = 0;
	printf("\n\tI2C: I2C Read\n");
	readData = read_word(GPIO_DATA_REG);
	DelayLoop(delay, delay);
//	scl=1;delay
	printf("\n\tI2C: I2C Write\n");
	write_word(GPIO_DATA_REG, (readData | I2C_SCL) );
	DelayLoop(delay, delay);

		printf("\n\tI2C: I2C Write\n");
		readData = read_word(GPIO_DATA_REG)  & I2C_SDA;

//	scl=0;
	printf("\n\tI2C: I2C Write\n");
	write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) & ~(I2C_SCL) ) );
	DelayLoop(delay, delay);
	printf("\n\tI2C: I2C ReadNackForWrite sent\n");

}

/** @fn  void SendAckForRead(unsigned char delay)
 * @brief After the READ operation is done the master will send Ack
 * to slave.
 *
 * @details The ack is sent by setting the SDA line low and then one SCL
 * transition..
 *
 * @warning The code will be in while loop if the slave is not
 * responding.
 *
 * @param[in] delay.
 * @param[Out] NULL.
 */
void SendAckForRead(unsigned char delay)
{
	unsigned long readData = 0;
  SetSdaDirection(GPIOD_IS_OUT);

//	readData = read_word(GPIO_DATA_REG);

//	sda=0;
	write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) & ~(I2C_SDA)) );
	DelayLoop(delay, delay);

//	scl=1;
	write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) | I2C_SCL) );
	DelayLoop(delay, delay);

//	scl=0;
	write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) & ~(I2C_SCL) ) );
	DelayLoop(delay, delay);

  SetSdaDirection(GPIOD_IS_IN);

}


/** @fn void SendNackForRead(unsigned char delay)
 * @brief After the READ operation is done the master will send Nack
 * to slave if it wants to terminates the I2C communication.
 *
 * @details The ack is sent by setting the SDA line high and then one SCL
 * transition..
 *
 * @warning The code will be in while loop if the slave is not
 * responding.
 *
 * @param[in] delay.
 * @param[Out] NULL.
 */
void SendNackForRead(unsigned char delay)
 {
  unsigned long readData = 0;
  SetSdaDirection(GPIOD_IS_OUT);

 //	readData = read_word(GPIO_DATA_REG);

 //	sda=0;
  write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG)  | (I2C_SDA)) );
  DelayLoop(delay, delay);

 //	scl=1;
  write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) | I2C_SCL) );
  DelayLoop(delay, delay);

 //	scl=0;
  write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) & ~(I2C_SCL) ) );
  DelayLoop(delay, delay);

  SetSdaDirection(GPIOD_IS_IN);

 }
/** @fn static void I2cInit()
 * @brief Configuring the SDA and SCL as OUTPUTS so that Start, Slave address
 * ,and register address or register value that needs to be writen.
 *
 * @details I2C master Inits makes the master ready for either read or write
 * operation.
 *
 * @warning This bit value can be changed as per I2C_SCL macro.
 *
 * @param[in] Null.
 * @param[Out] Null.
 */
void I2cInit()
{
  SetSCLAsOutput();
  SetSdaDirection(GPIOD_IS_OUT);
  printf("Initialization successfully done");
}


/** @fn static void I2cSendSlaveAddress(unsigned char slaveAddress, unsigned char rdWRCntrl)
 * @brief Sends the slave address to the I2C device and check for acknowledge
 * from the slave.
 *
 * @details The master has to send the slave address along with read or write
 * control to to access the internal registers of the I2C slave. The slave device
 * will respond its presence by sending ack from its side
 *
 * @warning This bit value can be changed as per I2C_SCL macro.
 *
 * @param[in] Slave Address.
 * @param[in] Read / Write Control (0 --> Write, 1 --> Read).
 * @param[Out] NULL.
 */
void I2cSendSlaveAddress(unsigned char slaveAddress, unsigned char rdWrCntrl, unsigned char delay)
{
  SetSdaDirection(GPIOD_IS_OUT);

  printf("\n\tI2C: I2C Start\n");
  start(delay);
  printf("\n\tI2C: I2C Send Bytes\n");
  if(rdWrCntrl)
	{
     printf("\n\tI2C: I2C Write\n");
    I2cWriteByte( (slaveAddress | I2C_READ), delay);
	}
  else
	{
     printf("\n\tI2C: I2C Write\n");
    I2cWriteByte( (slaveAddress | I2C_WRITE), delay);
	}
  //	sda=1;
  write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) | I2C_SDA) );
  DelayLoop(delay, delay);

  printf("\n\tI2C: I2C Write Ack\n");
  SetSdaDirection(GPIOD_IS_IN);
    ReadAckForWrite(delay);
}

/** @fn static void I2cWriteData(unsigned char writeData)
 * @brief Complete function to write a byte in to the I2C slave device.
 *
 * @details When writing a byte, the master has to send the data first and then
 * it needs to wait for acknowledge from the slave.
 *
 * @warning This bit value can be changed as per I2C_SCL macro.
 *
 * @param[in] : Data that needs to be written (can be either register address,
 * or register value).
 * @param[Out] NULL.
 */
void I2cWriteData(unsigned char writeData, unsigned char delay)
{
  SetSdaDirection(GPIOD_IS_OUT);
  printf("\n\tI2C: I2C Write\n");
  I2cWriteByte( writeData, delay);
  //	sda=1;
  write_word(GPIO_DATA_REG, (read_word(GPIO_DATA_REG) | I2C_SDA) );
  DelayLoop(delay, delay);

  printf("\n\tI2C: I2C Write Ack\n");
  SetSdaDirection(GPIOD_IS_IN);
  ReadAckForWrite(delay);

}

/** @fn static unsigned char I2cReadDataAck(unsigned char delay)
 * @brief Sends ack for the read byte.
 *
 * @details Ack is sent to the slave so that it can make sure the data is read,
 * by the master so that slave can send next data.
 *
 * @warning This bit value can be changed as per I2C_SCL macro.
 *
 * @param[in] delay.
 * @param[Out] returns the value of readData .
 */
unsigned char I2cReadDataAck(unsigned char delay)
{
  unsigned char readData = 0;
  SetSdaDirection(GPIOD_IS_IN);
	printf("\n\tI2C: I2C Read\n");
	readData = I2cReadByte(delay);
	SetSdaDirection(GPIOD_IS_OUT);
	printf("\n\tI2C: I2C Read Ack\n");
	SendAckForRead(delay);
  return readData;
}

/** @fn static unsigned char I2cReadDataNack(unsigned char delay)
 * @brief Reads a byte from the I2C device.
 *
 * @details Whenever the master wants to read register or memory from a device,
 * the master can perform this action and respond with Nack to terminate the
 * transfer.
 *
 * @warning This bit value can be changed as per I2C_SCL macro.
 *
 * @param[in] delay.
 * @param[Out] returns the value of readData .
 */
unsigned char I2cReadDataNack(unsigned char delay)
{
  unsigned char readData = 0;
  SetSdaDirection(GPIOD_IS_IN);
 	printf("\n\tI2C: I2C Read\n");
  readData = I2cReadByte(delay);
	SetSdaDirection(GPIOD_IS_OUT);
  	printf("\n\tI2C: I2C Read NAck\n");
  	SendNackForRead(delay);
    return readData;
}


/** @fn static void start(unsigned char delay)
 * @brief Sending start condition for the I2C.
 *
 * @details Start condition is making SDA low when clock is high.
 *
 * @warning This bit value can be changed as per I2C_SCL macro.
 *
 * @param[in] delay.
 * @param[Out] No output parameters.
 */
void I2cStart(unsigned char delay)
{
  printf("\n\tI2C: I2C start\n");
  start(delay);
}

/** @fn static void stop(unsigned char delay)
 * @brief Sending stop condition for the I2C.
 *
 * @details Stop condition is making SDA high when clock is high.
 *
 * @warning This bit value can be changed as per I2C_SCL macro.
 *
 * @param[in] delay.
 * @param[Out] No output parameters.
 */
void I2cStop(unsigned char delay)
{
  printf("\n\tI2C: I2C stop\n");
  stop(delay);
}

/*************************************
  @Brief: To write one byte of data into a particular register of a partivular slave
  @parameters[in]:slave address, register address, data to be written
  @parameters[out]:none
 *************************************/
void I2c_Write_byte(unsigned char slave_address,unsigned char reg_address, unsigned char data, unsigned char delay )
{
	I2cSendSlaveAddress(slave_address, I2C_WRITE, delay);
	I2cWriteData(reg_address, delay);
	I2cWriteData(data,delay);
	I2cStop(delay);
}
/*************************************
  @Brief: To read one byte of data from a particular register of a partivular slave
  @parameters[in]:slave address, register address
  @parameters[out]:readdata
 *************************************/
int I2c_Read_byte(unsigned char slave_address,unsigned char reg_address, unsigned char delay)
{
	unsigned char readData;
	I2cSendSlaveAddress(slave_address, I2C_WRITE, delay);//selecting slave to be read
	I2cWriteData(reg_address, delay);//selecting register to be read
	I2cSendSlaveAddress(slave_address, I2C_READ, delay);
	readData = I2cReadDataAck(delay);
	I2cStop(delay);
	return (int) readData;
}

/*************************************
  @Brief: To burst read (i.e read multiple bytes byte of data)
  @parameters[in]:readbuf to store read data, count to tell how many bytes to read , last
  @parameters[out]:No. of values(bytes) read
 *************************************/
int I2c_shakti_readbytes(char *buf, int count, int last, unsigned char delay)
{
	printf("start reading the slave device\n");
	int i=0;
#ifdef PCF8584
	for(i=0;i<=count;i++)
	{
		if(i!=0 && i<count)
		{
			readbuf[i]=I2cReadDataAck(delay);

		}
		else if(i==0) I2cReadDataAck(delay);//dummy read
		else
		{
			readbuf[i] = I2cReadDataNack(delay);
		}
		/*The following loop is useful only  for eeprom*/
		if (last)  I2cStop(delay);
		else  I2cStart(delay);//sending repeated start
	}
	return i-1; //excluding the dummy read
#else
	for(i=0;i<count-1;i++)
		*(buf + i) = I2cReadDataAck(delay);
	*(buf + i) = I2cReadDataNack(delay);

	/*The following loop is useful only  for eeprom*/
	if (last)
		I2cStop(delay);
	else
		I2cStart(delay);//sending repeated start
#endif
	return i+1;
}
