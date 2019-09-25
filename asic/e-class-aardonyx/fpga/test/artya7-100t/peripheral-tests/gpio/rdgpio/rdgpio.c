/***************************************************************************
* Project           			:  shakti devt board
* Name of the file	     		:  rdgpio.c
* Created date			        :  26.02.2019
* Brief Description of file             :  Performs the reading operation with the help of gpio pins.
* Name of Author    	                :  Sathya Narayanan N
* Email ID                              :  sathya281@gmail.com

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

#include <stdio.h>//includes the definitions of standard input/output functions
#include "gpio.h" // includes definitions of gpio pins and read, write functions
#include "platform.h"

/************************************************************************
* Brief Description     : Maintains the required delay to perform an operation.
* Parameters            : Delay  Required(ms).
*************************************************************************/
extern void DelayLoop(unsigned long cntr1, unsigned long cntr2);

void main()
{
	unsigned long readData = 0;
	write_word(GPIO_DIRECTION_CNTRL_REG, 0x00000000);

	while(1)
	{
		readData =read_word(GPIO_DATA_REG);//copies the GPIO_DATA_REG Register contents//
		printf("\n Read Data is :0x%08x", readData);
		DelayLoop(3000, 5000);
	}
}
