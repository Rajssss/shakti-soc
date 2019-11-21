#include<stdbool.h>

// PWM Registers 
#define PERIOD_REGISTER     0x00000000	//16 bits (short)
#define DUTY_REGISTER       0x00000004	//16 bits (short)
#define CONTROL_REGISTER    0x00000008	//8 bits (char)
#define CLOCK_REGISTER      0x0000000c	//16 bits (short)

// Control Register Individual Bits 
#define CLOCK_SELECTOR      0x00000001
#define PWM_ENABLE          0x00000002
#define PWM_START           0x00000004
#define CONTINUOUS_ONCE     0x00000008
#define PWM_OUTPUT_ENABLE   0x00000010
#define INTERRUPT           0x00000020
#define READ_ONLY           0x00000040
#define RESET_COUNTER       0x00000080

// PWM Modules 
#define PWM_0 0
#define PWM_1 1
#define PWM_2 2
#define PWM_3 3
#define PWM_4 4
#define PWM_5 5

//function prototype
void pwm_configure(int module_number, int clock_divisor, int period, int duty, bool external_clock);
void pwm_start(int module_number, int mode);
void pwm_clear_registers(int module_number);
void pwm_init();
void pwm_set_external_clock(int module_number, bool value);
void pwm_set_clock(int module_number, int clock_divisor);
void pwm_set_duty_cycle(int module_number, int duty);
void pwm_set_periodic_cycle(int module_number, int period);
void pwm_stop(int module_number);
void show_register_values(int module_number);
int set_pwm_period_register(int module_number, int value);
int set_pwm_duty_register(int module_number, int value);
int set_pwm_control_register(int module_number, int value);
int set_pwm_clock_register(int module_number, int value);
int configure_control_register_mode(int mode);

