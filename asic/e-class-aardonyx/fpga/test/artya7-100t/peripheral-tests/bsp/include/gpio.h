/************************************************************************
* Project           			:  shakti devt board
* Name of the file	     		:  gpio.h
* Created date			        :  26.02.2019
* Brief Description of file     :  Includes the definitions of gpio pins and functions.
* Name of Author    	        :  Sathya Narayanan N
* Email ID                      :  sathya281@gmail.com

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
#ifndef GPIO_H
#define GPIO_H

#include "platform.h"
#define GPIO_DIRECTION_CNTRL_REG (GPIO_START  + (0 * GPIO_OFFSET ))
#define GPIO_DATA_REG  (GPIO_START + (1 * GPIO_OFFSET ))


/*********************************************************************
* Brief Description     : returns the value stored at a given address
*                         Here we assume the word size to be 32 bits for gpio
* Parameters            : int*
* Return                : int
* *******************************************************************/

long int read_word(int *addr);

/*****************************************************
* Brief Description     : writes a value to an address
* Parameters            : int*
* Return                : int
* ****************************************************/

void write_word(int *addr, unsigned long val);

#endif
