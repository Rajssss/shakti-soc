#include "pwm_driver.h"

/** @fn main()
 * @brief main function that runs the code
 * @details runs the code
 * @warning nil
 * @param[in] nil 
 * @param[Out] nil
 */


void DelayLoop(unsigned long cntr1, unsigned long cntr2)
{
	unsigned long tmpCntr = cntr2;
  while(cntr1--)
  {
		tmpCntr = cntr2;
		while(tmpCntr--);
  }
}

int main()
{
	/**we need to set the period, duty cycle and the clock divisor in order
	 *to set it to the frequency required. Base clock is 50MHz
	 **/
	//pwm_configure(PWM_0, 0xf000, 0xf0, 0x80, false);

	/*This function sets the periodic cycle*/
	//pwm_set_periodic_cycle(PWM_0,0xf0);
	
	/*This function sets the duty cycles that should run out of the total period cycles*/
	//pwm_set_duty_cycle(PWM_0,0xf0);
	
	/*This function sets the clock divider value in order to reduce the frequency of the clock*/
	//pwm_set_clock(PWM_0,0xf000);	
	
	/*This function starts the PWM in the specified mode*/
	while(1){
	pwm_configure(PWM_0, 0xf000, 0xf0, 0x80, false);
	DelayLoop(5000, 5000);
	pwm_start(PWM_0,0);
	DelayLoop(5000, 5000);
	pwm_stop(PWM_0);

	DelayLoop(5000, 1000);

	pwm_configure(PWM_0, 0xf000, 0xf0, 0x20, false);
	DelayLoop(5000, 5000);
	pwm_start(PWM_0,0);
	DelayLoop(5000, 5000);
	pwm_stop(PWM_0);

	DelayLoop(5000, 1000);

	pwm_configure(PWM_0, 0xf0f0, 0xf0, 0x50, false);
	DelayLoop(5000, 5000);
	pwm_start(PWM_0,0);
	DelayLoop(5000, 5000);
	pwm_stop(PWM_0);

	DelayLoop(5000, 1000);

	pwm_configure(PWM_0, 0xffff, 0xf0, 0x30, false);
	DelayLoop(5000, 5000);
	pwm_start(PWM_0,0);
	DelayLoop(5000, 5000);
	pwm_stop(PWM_0);

	DelayLoop(5000, 1000);

	pwm_configure(PWM_0, 0x000f, 0xf0, 0x100, false);
	DelayLoop(5000, 5000);
	pwm_start(PWM_0,0);
	DelayLoop(5000, 5000);
	pwm_stop(PWM_0);

	DelayLoop(5000, 1000);
	}
	return 0;
}
