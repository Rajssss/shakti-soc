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
