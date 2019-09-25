/***************************************************************************
* Project           			:  shakti devt board
* Name of the file	     		:  tglgpio.c
* Created date			        :  26.02.2019
* Brief Description of file             :  Control an led with the help of a button, gpio based.
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

#include "platform.h"
#include "gpio.h" // includes definitions of gpio pins and read, write functions//

/************************************************************************
* Brief Description     : Maintains the required delay to perform an operation. 
* Parameters            : Delay  Required(ms).
*************************************************************************/

extern void DelayLoop(unsigned long cntr1, unsigned long cntr2);

/*********************************************************************
* Brief Description     :Performs the toggling operation  with the help of button.
* Parameters            :Registers,control word.
********************************************************************/
  
void main()
{
//Assumption 1 ---> output, 0 ---> input
	write_word(GPIO_DIRECTION_CNTRL_REG, 0x003FFFFF);

	while(1)
	{
		write_word(GPIO_DATA_REG, 0x003FFFFF);
		DelayLoop(1000, 5000);
		write_word(GPIO_DATA_REG, 0x00);
		DelayLoop(1000, 5000);
		
	}

}
