#include "util.h"
#define PINMUX_CFG   0x00040310
int* pinmux_cfg = (int*) PINMUX_CFG;

void set_spi(int* addr, int val)
{
    *addr = val;
}

int main(){
	set_spi(pinmux_cfg,0x55);
  printf("Hello World from SHAKTI");
  return 0;
}
