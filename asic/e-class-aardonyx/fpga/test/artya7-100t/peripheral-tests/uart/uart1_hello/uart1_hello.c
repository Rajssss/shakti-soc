#include "uart.h"//Includes the definitions of uar|        

#define PinmuxConfigReg 0x40410 

#define UART1_BASE_ADDRESS 0x11400
#define UART1_BASE_ADDR ((volatile unsigned int *) UART1_BASE_ADDRESS) /* 32 bits */
#define UART1_STATUS_REG ((volatile unsigned char *)(UART1_BASE_ADDRESS + 0xc)) /* 8 bits */
#define UART1_WRITE_REG ((volatile unsigned char *)(UART1_BASE_ADDRESS + 0x4)) /* 8 bits */
#define UART1_READ_REG ((volatile unsigned char *)(UART1_BASE_ADDRESS + 0x8)) /* 8 bits */
#define UART1_RECV_NOT_EMPTY 0x8
#define UART1_TRANS_NOT_FULL 0x2

void Write32BitWordFromShakti(int *addr, unsigned long val)
{
    *addr = val;
}


int uart1_putchar(int ch)
{
  unsigned char c = ch;
        while((*UART1_STATUS_REG & UART1_TRANS_NOT_FULL) == 0);
        *UART1_WRITE_REG = c;
        return 0;
}

int uart1_getchar()
{
        char *ch;
                while((*UART1_STATUS_REG & UART1_RECV_NOT_EMPTY) == 0);
        ch = UART1_READ_REG;
        return *ch;
}

void main()
{	
	printf("Hello World !\n");
	Write32BitWordFromShakti(PinmuxConfigReg, 0x5);
	while(1)
	{		
		uart1_putchar(10);
	}
}

