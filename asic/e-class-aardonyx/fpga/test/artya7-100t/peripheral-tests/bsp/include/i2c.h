// SPDX-License-Identifier: GPL-2.0-or-later
/*
 *
 *   Copyright (C) 1995-1997 Simon G. Vogl
 *		   1998-2000 Hans Berglund
 *
 * With some changes from Kyösti Mälkki <kmalkki@cc.hut.fi> and
 * Frodo Looijaard <frodol@dds.nl>, and also from Martin Bailey
 * <mbailey@littlefeet-inc.com>
 *
 * Partially rewriten by Oleg I. Vdovikin <vdovikin@jscc.ru> to handle multiple
 * messages, proper stop/repstart signaling during receive, added detect code
 *
 * Partially rewritten by Vinod <g.vinod1993@gmail.com> and Kotteeswaran <kottee.1@gmail.com> for shakti i2c
 *
 */
/************************************************************************
* Project           			:  shakti devt board
* Name of the file	     		:  i2c.h
* Brief Description of file     :  Header file for i2c
*/
#ifndef I2C_H
#define I2C_H

#include "platform.h"

#define ETIMEOUT -60
#define DEF_TIMEOUT 60
#define ETIMEDOUT -80
#define ENXIO -82
#define EREMOTEIO -81

#define I2C_SHAKTI_PIN	0x80
#define I2C_SHAKTI_ESO	0x40
#define I2C_SHAKTI_ES1	0x20
#define I2C_SHAKTI_ES2	0x10
#define I2C_SHAKTI_ENI	0x08
#define I2C_SHAKTI_STA	0x04
#define I2C_SHAKTI_STO	0x02
#define I2C_SHAKTI_ACK	0x01

#define I2C_SHAKTI_INI 0x40   /* 1 if not initialized */
#define I2C_SHAKTI_STS 0x20
#define I2C_SHAKTI_BER 0x10
#define I2C_SHAKTI_AD0 0x08
#define I2C_SHAKTI_LRB 0x08
#define I2C_SHAKTI_AAS 0x04
#define I2C_SHAKTI_LAB 0x02
#define I2C_SHAKTI_BB  0x01

#define I2C_SHAKTI_START         (I2C_SHAKTI_PIN | I2C_SHAKTI_ESO | I2C_SHAKTI_STA | I2C_SHAKTI_ACK)
#define I2C_SHAKTI_START_ENI     (I2C_SHAKTI_PIN | I2C_SHAKTI_ESO | I2C_SHAKTI_STA | I2C_SHAKTI_ACK | I2C_SHAKTI_START_ENI)
#define I2C_SHAKTI_STOP          (I2C_SHAKTI_PIN | I2C_SHAKTI_ESO | I2C_SHAKTI_STO | I2C_SHAKTI_ACK)
#define I2C_SHAKTI_REPSTART      (                 I2C_SHAKTI_ESO | I2C_SHAKTI_STA | I2C_SHAKTI_ACK)
#define I2C_SHAKTI_REPSTART_ENI  (                 I2C_SHAKTI_ESO | I2C_SHAKTI_STA | I2C_SHAKTI_ACK | I2C_SHAKTI_REPSTART_ENI)
#define I2C_SHAKTI_IDLE          (I2C_SHAKTI_PIN | I2C_SHAKTI_ESO                  | I2C_SHAKTI_ACK)
#define I2C_SHAKTI_NACK          (I2C_SHAKTI_ESO  )

#define I2C_READ 1
#define I2C_WRITE 0

#define I2C_BASE_ADDRESS I2C0_START


//Following the memory map provided
#define I2C_PRESCALE (I2C_BASE_ADDRESS  + 0)
#define I2C_CONTROL (I2C_BASE_ADDRESS + 8)
#define I2C_DATA (I2C_BASE_ADDRESS  + 0x10)
#define I2C_STATUS (I2C_BASE_ADDRESS + 0x18)
#define I2C_SCL (I2C_BASE_ADDRESS + 0x38)


// Hardcoding the pointers with addresss -- let's see if this works
int* i2c_control = (const int *) I2C_CONTROL;
int* i2c_data    = (const int *) I2C_DATA;
int* i2c_status  = (const int *) I2C_STATUS;
int* i2c_prescale = (const int *) I2C_PRESCALE;
int* i2c_scl = (const int *) I2C_SCL;

#endif

