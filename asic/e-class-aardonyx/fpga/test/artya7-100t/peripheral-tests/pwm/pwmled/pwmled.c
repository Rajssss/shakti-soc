
#define PWM_MODULE 0
int main()
{
	//pwm_init();
	show_register_values(0);
	/*we need to set the period, duty cycle and the clock divisor in order
	to set it to the frequency required. Base clock is 50MHz*/
	pwm_set_period(PWM_MODULE,0xf0);
	pwm_set_duty(PWM_MODULE,0xf0);
	pwm_set_clock(PWM_MODULE,0xf000);	
	pwm_start(PWM_MODULE,0);
	printf("\n After start");
while(1){
	show_register_values(0);
}
	return 0;
}


