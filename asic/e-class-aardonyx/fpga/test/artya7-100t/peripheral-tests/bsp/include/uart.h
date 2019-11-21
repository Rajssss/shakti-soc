#ifndef UART_H
#define UART_H

/*! UART Baud Rate Configuration Registers sets the uart clock rate */
#define UART_BAUDRATE_CFG_REGISTER 0
// UART Data Transmit Register (W)
#define UART_DATA_TX_REGISTER 4
// UART Data Receive Register (R)
#define UART_DATA_RX_REGISTER 8
// UART Status REgister (R)
#define UART_STS_REGISTER 0x0C

int putchar(int ch);

int is_empty();

int getchar();

#endif
