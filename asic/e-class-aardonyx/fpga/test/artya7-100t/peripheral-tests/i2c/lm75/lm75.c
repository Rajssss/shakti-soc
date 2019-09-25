/*
 Created by Kotteeswaran                                                                            
 Email id: kottee.1@gmail.com    

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
*/



#include <stdint.h>//Includes the definitions of standard input/output functions//
#define LM75_SLAVE_ADDRESS 0x90//Defines the Starting address of slave//

int main()
{
	int timeout;
	unsigned int tempReadValue = 0;

	printf("\tI2C: Starting Transaction\n");


	char writebuf1[2] = {0,0};
	char writebuf[18], writeData = 0x30;
	writebuf[0] = 0;
	writebuf[1] = 0;

	char readbuf[32];
	int i = 0, j = 0,  k = 0, status=0;
	int slaveaddr = 160;
	unsigned char temp = 0;

	/*Configure the I2C controller*/

	if( i2c_configure(0x0F, 0x51))
	{
		printf("\tSomething Wrong In Initialization\n");
		return 0;
	}
	else
		printf("\tIntilization Happened Fine\n");


	while(1)
	{
		printf("\n\r Reading the sensor again");


		/*Do a busy wait*/
		while(wait_for_bb())
		{
			printf("\tError in Waiting for BB\n");
			return 0;
		}


		/*Write the slave address in Axi bus*/

		i2c_slave_init(LM75_SLAVE_ADDRESS + 1); //for Read operation //

		/*Start reading from the slave device in the Axi bus*/

		if(i2c_dataread( readbuf, 2, 1) != 2)
		{
			printf("\n\tSomething wrong in reading bytes\n -- Diagnose");
			return 0;
		}


		printf("\n\tReadValue: %x; %x", readbuf[0], readbuf[1]);

		tempReadValue = (readbuf[0] << 1) | (readbuf[1] >> 7);

		printf("\n\ttempReadValue = %x", tempReadValue);
		printf("\n\t Temp. Value = %d", (tempReadValue / 2) );
		printf("\nCalling delay loop");
		DelayLoop(1000,1000);
		printf("\nReturn from Delayloop");
	}
	return 0;
}
