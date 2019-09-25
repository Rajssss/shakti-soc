/************************************************************************
* Project           			:  shakti devt board
* Name of the file	     		:  uart.h
* Brief Description of file             :  Header file for uart.
*  Name of Author    	                :  Sathya Narayanan N
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

   ************************************************************************/
#ifndef UART_H
#define UART_H

/*! UART Baud Rate Configuration Registers sets the uart clock rate */
#define UART_BAUDRATE_CFG_REGISTER 0
// UART Data Transmit Register (W)
#define UART_DATA_TX_REGISTER 4
// UART Data Receive Register (R)
#define UART_DATA_RX_REGISTER 8
// UART Status REgister (R)
#define UART_STS_REGISTER 0x0C

int putchar(int ch);

int is_empty();

int getchar();

#endif
