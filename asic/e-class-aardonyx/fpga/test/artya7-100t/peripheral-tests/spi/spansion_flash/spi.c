#include <stdint.h>
#include<stdlib.h>
#include "spi.h"

void main(){

	printf("\n SPI FLASH START \n"); 
	spi_init();
	printf("SPI init done\n");
	flash_device_id();
	waitfor(200);
	int total_data = 10; //total data you want to read/write
	int read_address = 0x00b00000;  //read from this address
	int* bram_address = (int*) 0x80010000; //write to this address

	for(int i = 0; i < total_data; ++i)
	{

		int read_value= flash_read(read_address);
		printf("Reading from adddress %x and data %x\n",read_address,read_value);		
		*(bram_address+i) = read_value;
		read_address=read_address+4;
	} 

	asm volatile ("ebreak");
} 

