#include <stdint.h>
#include "spi_0.h"
#include "cypress_data.h"


int main(){

	printf("SPI FLASH START \n"); 
	spi_init();
	printf("SPI init done\n");
	flash_device_id();
	waitfor(100);
	return 0; 
} 
 


