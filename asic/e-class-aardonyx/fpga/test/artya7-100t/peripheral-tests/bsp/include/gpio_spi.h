#ifndef GPIO_SPI_H
#define GPIO_SPI_H

#define IR_1 (1 << 4)
#define IR_2 (1 << 5)
#define IR_3 (1 << 6)
#define IR_4 (1 << 7)
#define IR_5 (1 << 8)


#define SPI_MISO 1<<0 //1st bit 
#define SPI_MOSI 1<<1 //2nd bit
#define SPI_SCLK 1<<2 //3rd bit
#define SPI_SS   1<<3 //4th bit
#define SPI_ADC_IN 0xC0

 unsigned char readbyte(unsigned char delay);

#endif/* GPIO_SPI_H*/

