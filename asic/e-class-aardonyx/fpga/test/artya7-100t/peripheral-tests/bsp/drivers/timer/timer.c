/***************************************************************************
* Project           			:  shakti devt board
* Name of the file	     		:  Timer.c
* Brief Description of file             :  Source file for timer.
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

static unsigned long mtime_low(void)
{
  return *(volatile unsigned long *)(CLINT_CTRL_ADDR + CLINT_MTIME);
}

#ifdef ARTIX7_35T

/*
Get each 32 bit and append for full timer value
*/
static uint32_t mtime_high(void)
{
  return *(volatile uint32_t *)(CLINT_CTRL_ADDR + CLINT_MTIME + 4);
}

uint64_t get_timer_value()
{
   return ( ((uint64_t)mtime_high() << 32) | mtime_low());
}

#else 

uint64_t get_timer_value()
{
  return mtime_lo();
}

#endif
