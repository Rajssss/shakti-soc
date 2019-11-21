#ifndef PLATFORM_H
#define PLATFORM_H

/*
Refer https://gitlab.com/shaktiproject/cores/shakti-soc/tree/master/asic/e-class-aardonyx for more information
*/
#define MTIME              0x0200BFF8
#define MCAUSE_INT         0x80000000
#define MCAUSE_CAUSE       0x7FFFFFFF

/*
 *@brief RISCV - E CLASS SOC Memory mapping
 */
/*!Debugger Offset */
#define DBG_MEM_START 0x00000010

/*!Tightly Coupled Memory(TCM) Offset. Size  */
#define SDRAM_MEM_START 0x80000000

/*!Pulse Width Modulation Start Offsets */
#define PWM_BASE_ADDRESS 0x00030000 /*PWM Base address*/
#define PWM_MODULE_OFFSET 0x00000100 /*Offset value to be incremented for each interface*/

/*!Serial Peripheral Interface Offsets */
#define SPI0_START 0x00020000 /* Serial Peripheral Interface 0 */
#define SPI1_START 0x00020100 /* Serial Peripheral Interface 1 */
#define SPI2_START 0x00020200 /* Serial Peripheral Interface 2 */

/*!Universal Synchronous Receiver Transmitter Interface Offsets */
#define UART0_START 0x00011300 /*! UART 0 */
#define UART1_START 0x00011400 /*! UART 1 */
#define UART2_START 0x00011500 /*! UART 2 */

/*! Core Local Interruptor CLINT */
#define CLINT_START 0x02000000

/*! Inter Integrated Circuit (I2C) Interface */
#define I2C0_START 0x00040000 /*! I2C Start Address */
#define I2C1_START 0x00040500           

/*! Quad SPI */
#define QSPI_START      0x10000000      

/*! Programmable Logic Interrupt Interface */
#define PLIC_START 0x0C000000 /*! PLIC Interface Start */
#define PLIC_END 0x0C01001F /*! PLIC Interface End */

/*!General Purpose Input / Output */
#define GPIO_START 0x00040200 //GPIO Start Address */
#define GPIO_OFFSET 0x08 /*!Generic offset used to access GPIO registers*/

#define BOOTROM_START 0X0004_0300

/*
 * General Purpose IOs supported
 */
#define GPIO0  (1 <<  0)
#define GPIO1  (1 <<  1)
#define GPIO2  (1 <<  2)
#define GPIO3  (1 <<  3)
#define GPIO4  (1 <<  4)
#define GPIO5  (1 <<  5)
#define GPIO6  (1 <<  6)
#define GPIO7  (1 <<  7)
#define GPIO8  (1 <<  8)
#define GPIO9  (1 <<  9)
#define GPIO10 (1 << 10)
#define GPIO11 (1 << 11)
#define GPIO12 (1 << 12)
#define GPIO13 (1 << 13)
#define GPIO14 (1 << 14)
#define GPIO15 (1 << 15)
#define GPIO_COUNT  0x20

#endif
