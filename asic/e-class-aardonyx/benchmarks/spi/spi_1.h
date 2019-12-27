#include<stdlib.h>

#define SPI_CR1 	 0x00020100
#define SPI_CR2 	 0x00020104
#define SPI_SR       0x00020108
#define SPI_DR1  	 0x0002010C
#define SPI_DR2  	 0x00020110
#define SPI_DR3  	 0x00020114
#define SPI_DR4		 0x00020118
#define SPI_DR5		 0x0002011C
#define SPI_CRCPR    0x00020120
#define SPI_RXCRCR   0x00020124
#define SPI_TXCRCR   0x00020128
#define PINMUX_CFG   0x00040310

// defining SPI_CR1 register

#define SPI_CPHA				(1 << 0)
#define SPI_CPOL				(1 << 1)
#define SPI_MSTR				(1 << 2)
#define SPI_BR(x)				(x << 3)
#define SPI_SPE  				(1 << 6)
#define SPI_LSBFIRST			(1 << 7)
#define SPI_SSI 				(1 << 8)
#define SPI_SSM					(1 << 9)
#define SPI_RXONLY				(1 << 10)
#define SPI_CRCL				(1 << 11)
#define SPI_CCRCNEXT			(1 << 12)
#define SPI_CRCEN				(1 << 13)
#define SPI_BIDIOE				(1 << 14)
#define SPI_BIDIMODE			(1 << 15)
#define SPI_TOTAL_BITS_TX(x)  	(x << 16)
#define SPI_TOTAL_BITS_RX(x)  	(x << 24)

// defining SPI_CR2 register

#define SPI_RX_IMM_START (1 << 16)
#define SPI_RX_START	 (1 << 15)
#define SPI_LDMA_TX		 (1 << 14)
#define SPI_LDMA_RX		 (1 << 13)
#define SPI_FRXTH		 (1 << 12)
#define SPI_DS(x)		 (x << 8)
#define SPI_TXEIE		 (1 << 7)
#define SPI_RXNEIE		 (1 << 6)
#define SPI_ERRIE		 (1 << 5)
#define SPI_FRF			 (1 << 4)
#define SPI_NSSP		 (1 << 3)
#define SPI_SSOE		 (1 << 2)
#define SPI_TXDMAEN		 (1 << 1)
#define SPI_RXDMAEN		 (1 << 0)

//defining SR register

#define SPI_FTLVL(x)	(x << 11)
#define SPI_FRLVL(x)	(x << 9)
#define SPI_FRE			(1 << 8)
#define SPI_OVR			(1 << 6)
#define SPI_MODF		(1 << 5)
#define SPI_CRCERR		(1 << 4)
#define TXE				(1 << 1)
#define RXNE			(1 << 0)

//pointers to register

int* spi_cr1 = (int*) SPI_CR1;
int* spi_cr2 = (int*) SPI_CR2;
int* spi_sr  = (int*) SPI_SR ;
int* spi_dr1  = (int*) SPI_DR1 ;
int* spi_dr2  = (int*) SPI_DR2 ;
int* spi_dr3  = (int*) SPI_DR3 ;
int* spi_dr4  = (int*) SPI_DR4 ;
int* spi_dr5  = (int*) SPI_DR5 ;
int* spi_crcpr  = (int*) SPI_CRCPR;
int* spi_rxcrcr = (int*) SPI_RXCRCR;
int* spi_txcrcr = (int*) SPI_TXCRCR; 
int* pinmux_cfg = (int*) PINMUX_CFG;

int read_data[4096];


void set_spi(int* addr, int val)
{
    *addr = val;
}

int get_spi(int* addr)
{
 return *addr;
}

void spi_init(){
set_spi(spi_cr1, (SPI_BR(7)|SPI_CPHA|SPI_CPOL));
}

void spi_tx_rx_start(){
set_spi(spi_cr2, (SPI_RX_IMM_START));
}

void spi_enable(){
set_spi(spi_cr1, (SPI_BR(7)|SPI_TOTAL_BITS_TX(4)|SPI_TOTAL_BITS_RX(16)|SPI_SPE));
}

void spi_rx_enable(){
set_spi(spi_cr2, (SPI_RX_START));
}

int bitExtracted(int number, int k, int p) 
{ 
      return (((1 << k) - 1) & (number >> (p - 1))); 
} 

int concat(int x, int y) {
      unsigned pow = 10;
          while(y >= pow)
                    pow *= 10;
                        return x * pow + y;        
}

int spi_rxne_enable(){
	int value = 0;
	while (!(value & 0x1)){
		waitfor(100);
		value = *spi_sr;
	}
	return 1;
}

int spi_notbusy(){
	int value = 0x80;
	while((value & 0x80)){
		waitfor(10);
		value = get_spi(spi_sr);
		printf("Reading SR  %x \n",value);
	}
	return 1;
}

void bin(unsigned n) 
{ 
    unsigned i; 
    for (i = 1 << 31; i > 0; i = i / 2) 
        (n & i)? printf("1"): printf("0"); 
} 

void waitfor(unsigned int secs) {
	unsigned int time = 0;
	while(time++ < secs);
}

int flash_write_enable(){
	printf("Cypress write enable \n");
	set_spi(spi_dr1, 0x06000000);
	set_spi(spi_dr5, 0x06);
	set_spi(spi_cr1, (SPI_BR(7)|SPI_TOTAL_BITS_TX(8)|SPI_TOTAL_BITS_RX(0)|SPI_SPE|SPI_CPHA|SPI_CPOL));
//	waitfor(20);
	spi_notbusy();
	return 1;
}



int flash_clear_sr(){
	set_spi(spi_dr1,0x30000000);
	set_spi(spi_dr5,0x30);
	set_spi(spi_cr1, (SPI_BR(7)|SPI_TOTAL_BITS_TX(8)|SPI_TOTAL_BITS_RX(0)|SPI_SPE|SPI_CPHA|SPI_CPOL));
	spi_notbusy();
	return 1;
}

int flash_cmd_addr(int command, int addr){
	int address1 = bitExtracted(addr, 24, 9);
	int address2 = bitExtracted(addr, 8, 1);
	int data1 = command | address1 ;
	address2 = address2 << 24;
	printf("Erase dr1 \n");
	bin(data1);
	printf("\n");
	set_spi(spi_dr1, data1);
	set_spi(spi_dr2, address2);
	set_spi(spi_dr5, 0);
	set_spi(spi_cr1, (SPI_BR(7)|SPI_TOTAL_BITS_TX(40)|SPI_TOTAL_BITS_RX(0)|SPI_SPE|SPI_CPHA|SPI_CPOL));
	waitfor(20);
	spi_notbusy();
	return 1;
}


void flash_cmd_addr_data(int command, int addr, int data){
	int address1 = bitExtracted(addr, 24, 9);
	int address2 = bitExtracted(addr, 8, 1);
	int cmd_addr = command  | address1;
	address2 = address2 << 24;
	int data1 = bitExtracted(data, 24, 9);
	data1 = address2 | data1;
	int data2 = bitExtracted(data, 8, 1);
	data2 = data2 << 24;
	set_spi(spi_dr1, cmd_addr);
	set_spi(spi_dr2, data1);
	set_spi(spi_dr3, data2);
	set_spi(spi_dr5, 0);
	set_spi(spi_cr1, (SPI_BR(7)|SPI_TOTAL_BITS_TX(72)|SPI_TOTAL_BITS_RX(0)|SPI_SPE|SPI_CPHA|SPI_CPOL));
	waitfor(20);
	spi_notbusy();
}

void flash_write(int address, int data){
	flash_cmd_addr_data(0x12000000, address,data);
}


int flash_cmd_to_read(int command, int addr){
	int dr5;
	int address1 = bitExtracted(addr, 24, 9);
	int address2 = bitExtracted(addr, 8, 1);
	int cmd_addr = command  | address1;
	address2 = address2 << 24;
	set_spi(spi_dr1, cmd_addr);
	set_spi(spi_dr2, address2);
	set_spi(spi_dr5, 0);
	spi_tx_rx_start();
	set_spi(spi_cr1, (SPI_BR(7)|SPI_TOTAL_BITS_TX(48)|SPI_TOTAL_BITS_RX(32)|SPI_SPE|SPI_CPHA|SPI_CPOL));
	waitfor(20);
	if(spi_rxne_enable()) {
		dr5 = *spi_dr5;
	}
	return dr5;

}

int flash_read(int address){
	int read_value = flash_cmd_to_read(0x0C000000,address);
	return read_value;
}

int flash_cmd_read(int command){
	int dr1, dr2, dr5;
	set_spi(spi_dr1, command);
	set_spi(spi_dr5, command);
	spi_tx_rx_start();
	set_spi(spi_cr1, (SPI_BR(7)|SPI_TOTAL_BITS_TX(8)|SPI_TOTAL_BITS_RX(32)|SPI_SPE|SPI_CPHA|SPI_CPOL));
	if(spi_rxne_enable()) {
		dr5 = *spi_dr5;
		dr2 = *spi_dr2;
	}
  	return dr5;
}

void flash_erase(int address){
	printf("Cypress erase \n");
	flash_cmd_addr(0xDC000000, address);
	printf("Cypress erase done\n");
}                                                                      
                                                                
                                                                     
int flash_status_register_read(){
	int stat = 0x3;
	while (stat & 0x03){
		stat = flash_cmd_read(0x05000000);
		printf("flash status register val %x\n", stat);
	}
	return 0;
}
	
	
int flash_device_id(){
	int dr1, dr2, dr3;
	int val1, val2;
	flash_write_enable();
	set_spi(spi_dr1, 0x9f000000);
	set_spi(spi_dr5, 0x9f000000);
	spi_tx_rx_start();
	set_spi(spi_cr1, (SPI_BR(7)|SPI_TOTAL_BITS_TX(8)|SPI_TOTAL_BITS_RX(24)|SPI_SPE|SPI_CPHA|SPI_CPOL));
printf("REad status Reg %x \n",get_spi(spi_sr));	
if(spi_rxne_enable()) {
		dr3 = *spi_dr5;
		dr2 = *spi_dr2;
	}
	val1 = bitExtracted(dr3, 8, 17);
	val2 = bitExtracted(dr3, 16, 1);
	dr1 = concat(val2, val1);
	printf("Device ID %x \n", val1);
	printf("extracted device id %x \n",val2);


	return 1;	
}

void flash_cmd_to_read_xip_mode(int command, int addr, int bits_to_be_received, int read_data_store){
	int dr1,dr2,dr3,dr4,dr5;
	int address1 = bitExtracted(addr, 24, 9);
	int address2 = bitExtracted(addr, 8, 1);
	int cmd_addr = command  | address1;
	address2 = address2 << 24;
	printf("\n");
	set_spi(spi_dr1, cmd_addr);
	set_spi(spi_dr2, address2);
	set_spi(spi_dr5, 0);
	spi_tx_rx_start();
	set_spi(spi_cr1, (SPI_BR(7)|SPI_TOTAL_BITS_TX(40)|SPI_TOTAL_BITS_RX(bits_to_be_received)|SPI_SPE|SPI_CPHA|SPI_CPOL));
	if(spi_rxne_enable()) {
		dr5 = *spi_dr5;
		dr4 = *spi_dr4;
		dr3 = *spi_dr3;
		dr2 = *spi_dr2;
		dr1 = *spi_dr1;
		read_data[read_data_store] = dr1;
		read_data[read_data_store+1] = dr2;
		read_data[read_data_store+2] = dr3;
		read_data[read_data_store+3] = dr4;
		read_data[read_data_store+4] = dr5;
		printf("Data received : %d : %x, %x, %x, %x, %x \n", read_data_store,dr5,dr4,dr3,dr2,dr1);
		printf("\n");
	}

}


void flash_xip_read(int start_address,int bits_to_be_received,int read_data_store){
	printf("XIP mode : Reading from flash\n");
	flash_cmd_to_read_xip_mode(0x13000000,start_address,bits_to_be_received,read_data_store);
	printf("Read request for XIP mode done\n");
}
