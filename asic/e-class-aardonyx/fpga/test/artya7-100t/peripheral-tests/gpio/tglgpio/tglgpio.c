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
