/***************************************************************************
* Project           			:  shakti devt board
* Name of the file	     		:  gpio_i2c.c
* Created date			        :  9.07.2019
* Brief Description of file             :  Performs the I2C operations using gpio pins.
* Name of Author    	                :  Kotteeswaran
* Email ID                              :  kottee.1@gmail.com

    Copyright (C) 2019  IIT Madras. All rights reserved.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

***************************************************************************/
#include "platform.h"
#include "gpio.h"
#include "led_driver.h"

extern void DelayLoop(unsigned long , unsigned long );



/*
 * @fn static void Led_Configure()
 * @brief Function for configure Individual LED pins as output.
 *
 * @details 8 GPIO pins are mapped to 8 LEDs. This function configures
 *          each LED as output pin.
 *
 * @warning Nil.
 *
 * @param[in] Pin that needs to be configured as LED.
 * @param[Out] No output parameters.
 */
void Ledx_Configure(unsigned long pinCntrl)
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DIRECTION_CNTRL_REG);
	write_word(GPIO_DIRECTION_CNTRL_REG, ( readData | pinCntrl ) );
}

/*
 * @fn static void RGBLedx_Configure()
 * @brief Function for configure Individual RGBLED pins as output.
 *
 * @details 8 GPIO pins are mapped to 2 RGB LEDs. This function configures
 *          each LED as output pin.
 *
 * @warning Nil.
 *
 * @param[in] RGB LED that needs to be configured.
 * @param[Out] No output parameters.
 */
void RGBLedx_Configure(unsigned char LedNo)
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DIRECTION_CNTRL_REG);
  if(0 == LedNo)
    write_word(GPIO_DIRECTION_CNTRL_REG, ( readData | RGB0 ) );
  else if (1 == LedNo)
    write_word(GPIO_DIRECTION_CNTRL_REG, ( readData | RGB1  ) );
  else
    printf("\nInvalid LED No. Permissable values [0,1]");
}


/*
 * @fn static void NormalLeds_Configure()
 * @brief Function for configure Normal LEDs 3 & 4 as as output.
 *
 * @details 8 GPIO pins are mapped to 2 normal LEDs. This function configures
 *          both LED as output pin.
 *
 * @warning Nil.
 *
 * @param[in]
 * @param[Out] No output parameters.
 */
void NormalLeds_Configure()
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DIRECTION_CNTRL_REG);
  write_word(GPIO_DIRECTION_CNTRL_REG, ( readData | NORMAL_LEDS ) ) ;
}


/*
 * @fn static void NormalLeds_Configure()
 * @brief Function for configure Normal LEDs 3 & 4 as as output.
 *
 * @details 8 GPIO pins are mapped to 2 normal LEDs. This function configures
 *          both LED as output pin.
 *
 * @warning Nil.
 *
 * @param[in]
 * @param[Out] No output parameters.
 */
void RGBLeds_Configure()
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DIRECTION_CNTRL_REG);
  write_word(GPIO_DIRECTION_CNTRL_REG, ( readData | ( RGB_LEDS ) ) );
}

/*
 * @fn static void NormalLeds_Configure()
 * @brief Function for configure Normal LEDs 3 & 4 as as output.
 *
 * @details 8 GPIO pins are mapped to 2 normal LEDs. This function configures
 *          both LED as output pin.
 *
 * @warning Nil.
 *
 * @param[in]
 * @param[Out] No output parameters.
 */
void AllLeds_Configure()
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DIRECTION_CNTRL_REG);
  write_word(GPIO_DIRECTION_CNTRL_REG, ( readData | ALL_LEDS ) );
}



/*
 * @fn static void Ledx_On()
 * @brief Function for switch ON the Individual LED.
 *
 * @details 8 GPIO pins are mapped to 8 LEDs. This function configures
 *          each LED as output pin.
 *
 * @warning Nil.
 *
 * @param[in] LED that needs to be switched On.
 * @param[Out] No output parameters.
 */
void Ledx_On(unsigned long pinCntrl)
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
	write_word(GPIO_DATA_REG, ( readData | pinCntrl ) );
}


/*
 * @fn static void Ledx_Off()
 * @brief Function for switch OFF the Individual LED.
 *
 * @details 8 GPIO pins are mapped to 8 LEDs. This function configures
 *          each LED as output pin.
 *
 * @warning Nil.
 *
 * @param[in] LED that needs to be switched OFF.
 * @param[Out] No output parameters.
 */
void Ledx_Off(unsigned long pinCntrl)
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
	write_word(GPIO_DATA_REG, ( readData & (~pinCntrl) )   );
}

/*
 * @fn static void NormalLeds_On()
 * @brief Function for switch ON the all Normal LEDs.
 *
 * @details 8 GPIO pins are mapped to 2 Normal LEDs. This function switches
 *          ON both Normal LEDs.
 *
 * @warning Nil.
 *
 * @param[in] Nil.
 * @param[Out] No output parameters.
 */
void NormalLeds_On()
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
  write_word(GPIO_DATA_REG, ( readData | NORMAL_LEDS ) );
}

/*
 * @fn static void NormalLeds_On()
 * @brief Function for switch ON the all Normal LEDs.
 *
 * @details 8 GPIO pins are mapped to 2 Normal LEDs. This function switches
 *          ON both RGB LED.
 *
 * @warning Nil.
 *
 * @param[in] Nil.
 * @param[Out] No output parameters.
 */
void NormalLeds_Off()
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
  write_word(GPIO_DATA_REG, ( readData & (~NORMAL_LEDS) ) );
}




/*
 * @fn static void RGBLedx_On()
 * @brief Function for switch ON the Individual RGB LED.
 *
 * @details 8 GPIO pins are mapped to 2 RGB LEDs. This function switches
 *          on passed RGB LED.
 *
 * @warning Nil.
 *
 * @param[in] RGB LED that needs to be switched On[0,1].
 * @param[Out] No output parameters.
 */
void RGBLedx_On(unsigned char LedNo)
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
  if(0 == LedNo)
  {
    //printf("\n RGB Ledx_On number 0");
    write_word(GPIO_DATA_REG, ( readData | RGB0 ) );
  }
  else if(1 == LedNo)
  {
//    printf("\n RGB Ledx_On number 1");
    write_word(GPIO_DATA_REG, ( readData | RGB1 ) );
  }
  else
    printf("\n RGB Led number is not valid [0,1]");
}

/*
 * @fn static void RGBLedx_Off()
 * @brief Function for switch ON the Individual RGB LED.
 *
 * @details 8 GPIO pins are mapped to 2 RGB LEDs. This function switches
 *          OFF passed RGB LED.
 *
 * @warning Nil.
 *
 * @param[in] RGB LED that needs to be switched OFF[0,1].
 * @param[Out] No output parameters.
 */
void RGBLedx_Off(unsigned char LedNo)
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
  if(0 == LedNo)
	 write_word(GPIO_DATA_REG, ( readData & (~RGB0) ) );
  else if(1 == LedNo)
 	  write_word(GPIO_DATA_REG, ( readData & (~RGB1) ) );
  else
    printf("\n RGB Led number is not valid [0,1]");
}

/*
 * @fn static void RGBLeds_On()
 * @brief Function for switch ON the all RGB LEDs.
 *
 * @details 8 GPIO pins are mapped to 2 RGB LEDs. This function switches
 *          ON both RGB LED.
 *
 * @warning Nil.
 *
 * @param[in] Nil.
 * @param[Out] No output parameters.
 */
void RGBLeds_On()
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
  write_word(GPIO_DATA_REG, ( readData | RGB_LEDS ) );
}

/*
 * @fn static void RGBLeds_On()
 * @brief Function for switch ON the all RGB LEDs.
 *
 * @details 8 GPIO pins are mapped to 2 RGB LEDs. This function switches
 *          ON both RGB LED.
 *
 * @warning Nil.
 *
 * @param[in] Nil.
 * @param[Out] No output parameters.
 */
void RGBLeds_Off()
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
  write_word(GPIO_DATA_REG, ( readData & (~RGB_LEDS) ) );
}



/*
 * @fn static void ALLLeds_On()
 * @brief Function for switch ON the all LEDs.
 *
 * @details 8 GPIO pins are mapped to 8 LEDs. This function switches
 *          on all LEDs.
 *
 * @warning Nil.
 *
 * @param[in] Nil.
 * @param[Out] No output parameters.
 */
void ALLLeds_On()
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
	 write_word(GPIO_DATA_REG, ( readData | ALL_LEDS ) );
}

/*
 * @fn static void ALLLeds_Off()
 * @brief Function for switch OFF the all LEDs.
 *
 * @details 8 GPIO pins are mapped to 8 LEDs. This function switches
 *          OFF all LEDs.
 *
 * @warning Nil.
 *
 * @param[in] Nil.
 * @param[Out] No output parameters.
 */
void ALLLeds_Off()
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
  write_word(GPIO_DATA_REG, ( readData & (~ALL_LEDS) ) );
}


/*
 * @fn static void ToggleLedx()
 * @brief Function for switch ON the passed LED.
 *
 * @details 8 GPIO pins are mapped to 8 LEDs. This function toggles
 *          given LED.
 *
 * @warning Nil.
 *
 * @param[in] Led that needs to be toggled, delay.
 * @param[Out] No output parameters.
 */
void ToggleLedx(unsigned long pinCntrl, unsigned long delay1, unsigned long delay2)
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
	write_word (GPIO_DATA_REG, ( readData | (pinCntrl ) ) );
  DelayLoop(delay1, delay2);
  write_word(GPIO_DATA_REG, ( readData & (~pinCntrl) ) );
  DelayLoop(delay1, delay2);
}


/*
 * @fn static void ToggleNormalLeds()
 * @brief Function for switch ON the passed both normal LED.
 *
 * @details 8 GPIO pins are mapped to 2 normal LEDs. This function toggles
 *          given both the normal LEDs.
 *
 * @warning Nil.
 *
 * @param[in] delay.
 * @param[Out] No output parameters.
 */
void ToggleNormalLeds( unsigned long delay1, unsigned long delay2 )
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
	write_word(GPIO_DATA_REG, ( readData | NORMAL_LEDS ) );
	DelayLoop(delay1, delay2);
  write_word(GPIO_DATA_REG, ( readData & (~NORMAL_LEDS) ) );
	DelayLoop(delay1, delay2);
}

/*
 * @fn static void ToggleRGBLeds()
 * @brief Function for switch ON the passed both RGB LED.
 *
 * @details 8 GPIO pins are mapped to 2 RGB LEDs. This function toggles
 *          given both the RGB LEDs.
 *
 * @warning Nil.
 *
 * @param[in] delay.
 * @param[Out] No output parameters.
 */
void ToggleRGBLeds( unsigned long delay1, unsigned long delay2 )
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
	write_word(GPIO_DATA_REG, ( readData | RGB_LEDS ) );
	DelayLoop(delay1, delay2);
  write_word(GPIO_DATA_REG, ( readData & (~RGB_LEDS) ) );
	DelayLoop(delay1, delay2);
}


/*
 * @fn static void ToggleAlllLeds()
 * @brief Function for switch ON the passed All LEDs.
 *
 * @details 8 GPIO pins are mapped to 8 LEDs. This function toggles
 *          given both the all the LEDs.
 *
 * @warning Nil.
 *
 * @param[in] delay.
 * @param[Out] No output parameters.
 */
void ToggleAllLeds( unsigned long delay1, unsigned long delay2)
{
	unsigned long readData = 0;
	readData = read_word(GPIO_DATA_REG);
	write_word(GPIO_DATA_REG, ( readData | ALL_LEDS ) );
	DelayLoop(delay1, delay2);
  write_word(GPIO_DATA_REG, ( readData & (~ALL_LEDS) ) );
	DelayLoop(delay1, delay2);
}
