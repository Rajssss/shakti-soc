#include "platform.h"
#include "pwm_driver.h"
/** @fn int set_pwm_period_register(int module_number, int value)
 * @brief Function to set the period register of the selected pwm module
 *
 * @details This function will be called to set the value of the period register for the selected module
 *
 * @warning 
 *
 * @param[in] module_number- specifies the pwm module to be selected
 *            value - value to be set between 0x0000 to 0xffff.
 * @param[Out] returns 1 on success, 0 on failure.
 */

int set_pwm_period_register(int module_number, int value)
{
	if(value>0xffff)
		return 0;
	volatile short* period_value=PWM0_START + module_number*PWM_MODULE_OFFSET + PERIOD_REGISTER;
	*period_value=value;
	return 1;
}

/** @fn int set_pwm_duty_register(int module_number, int value)
 * @brief Function to set the duty register of the selected pwm module
 *
 * @details This function will be called to set the value of the duty register for the selected module
 *
 * @warning 
 *
 * @param[in] module_number- specifies the pwm module to be selected
 *            value - value to be set between 0x0000 to 0xffff.
 * @param[Out] returns 1 on success, 0 on failure.
 */
int set_pwm_duty_register(int module_number, int value)
{
	if(value>0xffff)
		return 0;
	volatile short* duty_value=PWM0_START + module_number*PWM_MODULE_OFFSET + DUTY_REGISTER;
	*duty_value=value;
	return 1;
}

/** @fn int set_pwm_control_register(int module_number, int value)
 * @brief Function to set the control register of the selected pwm module
 *
 * @details This function will be called to set the value of the control register for the selected module
 *
 * @warning 
 *
 * @param[in] module_number- specifies the pwm module to be selected
 *            value - value to be set between 0x0000 to 0xff.
 * @param[Out] returns 1 on success, 0 on failure.
 */
int set_pwm_control_register(int module_number, int value)
{
	if(value>0xff)
		return 0;
	volatile char* control_value=PWM0_START + module_number*PWM_MODULE_OFFSET + CONTROL_REGISTER;
	*control_value=value;
	return 1;
}

/** @fn int set_pwm_clock_register(int module_number, int value)
 * @brief Function to set the clock register of the selected pwm module
 *
 * @details This function will be called to set the value of the clock register(clock divisor) for the selected module
 *
 * @warning 
 *
 * @param[in] module_number- specifies the pwm module to be selected
 *            value - value to be set between 0x0000 to 0xffff.
 * @param[Out] returns 1 on success, 0 on failure.
 */
int set_pwm_clock_register(int module_number, int value)
{
	if(value>0xffff)
		return 0;
	volatile short* clock_value=PWM0_START + module_number*PWM_MODULE_OFFSET + CLOCK_REGISTER;
	*clock_value=value;
	return 1;
}

/** @fn void pwm_clear(int module_number)
 * @brief Function to clear all registers in a specific pwm module
 *
 * @details This function will be called to clear all registers in a specific pwm module
 *
 * @warning 
 *
 * @param[in] module_number- specifies the pwm module to be selected
 * @param[Out] returns nothing.
 */
void pwm_clear(int module_number)
{
	set_pwm_period_register(module_number,0);
	set_pwm_duty_register(module_number,0);
	set_pwm_control_register(module_number,0);
	set_pwm_clock_register(module_number,0);
}

/** @fn void pwm_init()
 * @brief Function to initialize all pwm modules
 * 
 * @details This function will be called to initialize all pwm modules
 *
 * @warning 
 *
 * @param[in] takes no input
 * @param[Out] returns nothing.
 */
void pwm_init()
{
	int i;
	for(i=0;i<5;i++)
	{
		pwm_clear(i);
	}

}

/** @fn int set_control_value_by_mode(int mode)
 * @brief Function to set value of control register based on mode selected
 * 
 * @details This function will set value of control register based on mode selected
 *
 * @warning 
 *
 * @param[in] mode- 
 *                0-PWM Mode.
 *                1-Timer Mode run once.
 *                2-Timer Mode run continuously.
 * @param[Out] returns value to be set in the control register.
 */
int set_control_value_by_mode(int mode)
{
	int value=0x0;
	if(mode==0) {
		printf("\nRunning in PWM mode");
		value+=PWM_ENABLE;
		value+=PWM_START;
		value+=PWM_OUTPUT_ENABLE;
	}
	else if(mode==1){
		printf("\nOnce only timer mode");
		value+=PWM_ENABLE;
		value+=CONTINUOUS_ONCE;
	}
	else if(mode==2){
		printf("\n continuous timer mode");
		value+=PWM_ENABLE;
	}

	return value;
}

/** @fn void pwm_start(int module_number,int mode)
 * @brief Function to start a pwm module with a specific mode
 * 
 * @details This function will start a pwm module with a specific mode
 *
 * @warning 
 *
 * @param[in] module_number-  the pwm module to be selected
 *            mode - mode to be selected
 *                  0-PWM Mode
 *                  1-Timer Mode run once
 *                  2-Timer Mode run contin
 * @param[Out] returns nothing.
 */
void pwm_start(int module_number,int mode)
{

	int control=set_control_value_by_mode(mode);
	if(set_pwm_control_register(module_number,control))
		printf("\nControl Register Set");
}

/** @fn void pwm_set_clock(int module_number,int clock_divisor)
 * @brief Function to set the clock divisor value of a specific pwm module
 * 
 * @details This function will set the clock divisor value of a specific pwm module
 *
 * @warning 
 *
 * @param[in] module_number-  the pwm module to be selected
 *            clock_divisor-  value of clock divisor to be used to divide base clock speed of 50MHz.
 * @param[Out] returns nothing.
 */
void pwm_set_clock(int module_number,int clock_divisor)
{
	if(set_pwm_clock_register(module_number,clock_divisor))
		printf("\nClock divisor set");
}

/** @fn void pwm_set_duty(int module_number,int duty)
 * @brief Function to set the duty cycle value of a specific pwm module
 * 
 * @details This function will set the duty cycles value of a specific pwm module
 *
 * @warning 
 *
 * @param[in] module_number-  the pwm module to be selected
 *            clock_divisor-  value of duty cycles to be used to decide how many period cycles the pwm signal is set to 1.
 * @param[Out] returns nothing.
 */
void pwm_set_duty(int module_number,int duty)
{
	if(set_pwm_duty_register(module_number,duty))
		printf("\nDuty Cycle value set");
}

/** @fn void pwm_set_period(int module_number,int period)
 * @brief Function to set the period cycles value of a specific pwm module
 * 
 * @details This function will set the period cycles value of a specific pwm module
 *
 * @warning 
 *
 * @param[in] module_number-  the pwm module to be selected
 *            clock_divisor-  value of period cycles which is used to further divide the frequency into fixed period cycles.
 * @param[Out] returns nothing.
 */
void pwm_set_period(int module_number,int period)
{
	if(set_pwm_period_register(module_number,period))
		printf("\nClock Period set");
}

/** @fn void pwm_stop(int module_number)
 * @brief Function to stop a specific pwm module
 * 
 * @details This function will stop a specific pwm module
 *
 * @warning 
 *
 * @param[in] module_number-  the pwm module to be selected
 *
 * @param[Out] returns nothing.
 */
void pwm_stop(int module_number)
{
	set_pwm_control_register(module_number,0x0);
}

/** @fn show_register_values(int module_number)
 * @brief Function to print the values of all the registers of a specific pwm module
 * 
 * @details This function will print the values of all the registers of a specific pwm module
 *
 * @warning 
 *
 * @param[in] module_number-  the pwm module to be selected
 *            
 * @param[Out] returns nothing.
 */
void show_register_values(int module_number)
{
	volatile unsigned short* period_value=PWM0_START + module_number*PWM_MODULE_OFFSET + PERIOD_REGISTER;
	volatile unsigned short* duty_value=PWM0_START + module_number*PWM_MODULE_OFFSET + DUTY_REGISTER;
	volatile unsigned char* control_value=PWM0_START + module_number*PWM_MODULE_OFFSET + CONTROL_REGISTER;
	volatile unsigned short* clock_value=PWM0_START + module_number*PWM_MODULE_OFFSET + CLOCK_REGISTER;

	printf("\nThe value of period register is %x",	*period_value);
	printf("\nThe value of duty register is %x ",*duty_value);
	printf("\nThe value of control register is  %x ",*control_value);
	printf("\nThe value of clock register is %x",*clock_value);
}




	


