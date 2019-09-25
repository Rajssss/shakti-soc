/*
    uart.c - src file for uart

    Created by Niketan Shahapur cs18m036@smail.iitm.ac.in

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

#include "uart.h"


#define UART0_BASE_ADDRESS 0x11300
#define UART1_BASE_ADDRESS 0x11400
#define UART2_BASE_ADDRESS 0x11500

#define BASE_ADDR  ((volatile unsigned int *) UART0_BASE_ADDRESS)         /* 32 bits */
#define STATUS_REG ((volatile unsigned char *)(UART0_BASE_ADDRESS + 0xc)) /* 8 bits */
#define WRITE_REG  ((volatile unsigned char *)(UART0_BASE_ADDRESS + 0x4)) /* 8 bits */
#define READ_REG   ((volatile unsigned char *)(UART0_BASE_ADDRESS + 0x8)) /* 8 bits */

#define RECV_NOT_EMPTY 0x08
#define TRANS_NOT_FULL 0x02


#undef getchar
int getchar()
{
  char *ch;
	while((*STATUS_REG & RECV_NOT_EMPTY) == 0);
  ch = READ_REG;
  return *ch;
}

#undef putchar
int putchar(int ch)
{
  unsigned char c = ch;
	while((*STATUS_REG & TRANS_NOT_FULL) == 0);
	*WRITE_REG = c;
	return 0;
}
