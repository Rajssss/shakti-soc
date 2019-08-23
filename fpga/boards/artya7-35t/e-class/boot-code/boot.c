
#include "boot.h"

int main(){
  printf("%s",bootlogo);
  printf("%s",bootstring);
  asm volatile("ebreak");
}
