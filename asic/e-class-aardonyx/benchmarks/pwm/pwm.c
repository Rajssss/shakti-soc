#include<stdint.h>

#define PINMUX_CFG   0x00040310
#define PWM_CTRL	 0x00030508 
#define PWM_PERIOD	 0x00030500 
#define PWM_DCYCLE	 0x00030504
#define PWM_CLOCK 	 0x0003050C

uint32_t* pinmux_cfg = (uint32_t*) PINMUX_CFG;
uint8_t* pwm_ctrl = (uint8_t*) PWM_CTRL;
uint16_t* pwm_duty = (uint16_t*) PWM_DCYCLE;
uint16_t* pwm_period = (uint16_t*) PWM_PERIOD;
uint16_t* pwm_clock  = (uint16_t*) PWM_CLOCK;

void set_spi_32(uint32_t* addr, uint32_t val)
{
    *addr = val;
}

void set_spi_16(uint16_t* addr, uint16_t val)
{
    *addr = val;
}

void set_spi_8(uint8_t* addr, uint8_t val)
{
    *addr = val;
}

void waitfor(unsigned int secs) {
	unsigned int time = 0;
	while(time++ < secs);
}

int main(){
	set_spi_32(pinmux_cfg,0x2AA80);
	set_spi_16(pwm_clock,0x2);	
	set_spi_16(pwm_duty,0x5);
	set_spi_16(pwm_period,0xA);
	set_spi_8(pwm_ctrl,0x16);
	waitfor(100);
	return 0;
}
