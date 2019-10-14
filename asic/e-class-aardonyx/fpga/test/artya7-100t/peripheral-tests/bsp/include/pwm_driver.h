//PWM Registers
#define PERIOD_REGISTER 0x0	//16 bits (short)
#define DUTY_REGISTER 0x4	//16 bits (short)
#define CONTROL_REGISTER 0x8	//8 bits (char)
#define CLOCK_REGISTER 0xc	//16 bits (short)
//Control Register Individual Bits
#define CLOCK_SELECTOR 0x1
#define PWM_ENABLE 0x2
#define PWM_START 0x4
#define CONTINUOUS_ONCE 0x8
#define PWM_OUTPUT_ENABLE 0x10
#define INTERRUPT 0x20
#define READ_ONLY 0x40
#define RESET_COUNTER 0x80

#define PWM_MODULE_OFFSET 0x100 /*Offset value to be incremented for each interface*/

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
//void pwm_start(int module_number,int mode);

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
//void pwm_clear(int module_number);

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
//void pwm_init()

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
//void pwm_set_clock(int module_number,int clock_divisor);

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
//void pwm_set_duty(int module_number,int duty);

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
//void pwm_set_period(int module_number,int period);

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
//void pwm_stop(int module_number);

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
//void show_register_values(int module_number);
