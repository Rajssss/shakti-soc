#include "platform.h"
#include "gpio.h"

#define LED0_R GPIO16
#define LED0_G GPIO17
#define LED0_B GPIO18
#define LED1_R GPIO19
#define LED1_G GPIO20
#define LED1_B GPIO21
#define LED2 GPIO22
#define LED3 GPIO23

#define RGB0 (LED0_R | LED0_G | LED0_B )
#define RGB1 (LED1_R | LED1_G | LED1_B )

#define NORMAL_LEDS ( LED2 | LED3 )
#define RGB_LEDS ( RGB0 | RGB1 )

#define ALL_LEDS (RGB_LEDS | NORMAL_LEDS)



#define NORMAL_LED0 0
#define NORMAL_LED1 1

#define RGB_LED0 0
#define RGB_LED1 1
