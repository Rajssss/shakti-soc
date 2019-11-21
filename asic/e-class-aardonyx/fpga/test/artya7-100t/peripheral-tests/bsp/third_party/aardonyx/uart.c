#include "uart.h"


#define UART0_BASE_ADDRESS 0x11300
#define UART1_BASE_ADDRESS 0x11400
#define UART2_BASE_ADDRESS 0x11500

#define BASE_ADDR  ((volatile unsigned int *) UART0_BASE_ADDRESS)         /* 32 bits */
#define STATUS_REG ((volatile unsigned char *)(UART0_BASE_ADDRESS + 0xc)) /* 8 bits */
#define WRITE_REG  ((volatile unsigned char *)(UART0_BASE_ADDRESS + 0x4)) /* 8 bits */
#define READ_REG   ((volatile unsigned char *)(UART0_BASE_ADDRESS + 0x8)) /* 8 bits */

#define RECV_NOT_EMPTY 0x08
#define TRANS_NOT_FULL 0x02


#undef getchar
int getchar()
{
  char *ch;
	while((*STATUS_REG & RECV_NOT_EMPTY) == 0);
  ch = READ_REG;
  return *ch;
}

#undef putchar
int putchar(int ch)
{
  unsigned char c = ch;
	while((*STATUS_REG & TRANS_NOT_FULL) == 0);
	*WRITE_REG = c;
	return 0;
}
