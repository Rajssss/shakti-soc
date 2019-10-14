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
