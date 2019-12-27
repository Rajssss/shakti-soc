#include <stdint.h>
#include "spi_2.h"
#include "cypress_data.h"


int main(){

	printf("Configuring Pin Mux \n");
	set_spi(pinmux_cfg,0x00154000);
	printf("Pin Mux for SPI 2 is set \n");
	printf("SPI FLASH START \n"); 
	spi_init();
	printf("SPI init done\n");
	flash_device_id();
	waitfor(100);
	return 0; 
} 
 


