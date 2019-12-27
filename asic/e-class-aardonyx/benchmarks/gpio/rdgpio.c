#define GPIO_START 0X40100
#define GPIO_DIRECTION_CNTRL_REG (GPIO_START + 0X00)
#define GPIO_DATA_REG  (GPIO_START + 0X08)

#define PINMUX_CFG_REG 0x00040310

void write_pinmux(int *addr, unsigned long val)
{
    *addr = val;
}

extern void DelayLoop(unsigned long cntr1, unsigned long cntr2)
{
	unsigned long tmpCntr = cntr2;
	while(cntr1--)
	{
	  	tmpCntr = cntr2;
	  	while(tmpCntr--);
	}
}

long int read_word(int *addr)
{
  return *addr;
}

void write_word(int *addr, unsigned long val)
{
    *addr = val;
}

void main()
{
	unsigned long readData = 0;

	write_pinmux(PINMUX_CFG_REG, 0x00000000);
	//printf("Pinmux Config Register: 0x%08x", PINMUX_CFG_REG);

	//Assumption 1 ---> output, 0 ---> input
	write_word(GPIO_DIRECTION_CNTRL_REG, 0x00000000);
	//printf("\nGPIO Direction Register: 0x%08x", GPIO_DIRECTION_CNTRL_REG);
	i=0;
	while(i<20)
	{
		readData = 0;

		readData = read_word(GPIO_DATA_REG);
		printf("\nRead Data is :0x%08x", readData);
		printf("\n");

		DelayLoop(10, 10);
        i++;
  
	}
}
