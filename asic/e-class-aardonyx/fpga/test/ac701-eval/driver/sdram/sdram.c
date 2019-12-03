#define SDRAM_ADDRESS 0x80004000 
#define MEMORY_SIZE 0x100000f
int main()
{
  printf("\t AARDONYX SDRAM TEST \n");

   unsigned char* ptr;
   unsigned char  data;
   unsigned long  count;
   int error=0;
   int size=0; 
   printf( "Check memory addr  0x%08x size 0x%08x\n", SDRAM_ADDRESS, MEMORY_SIZE );
   printf( "Write test pattern to SDRAM...               \n" );
   ptr = (unsigned char*)( SDRAM_ADDRESS );
   data = 0x00;
   count = MEMORY_SIZE;
   while ( count-- )
   {
    *ptr++ = data++;
    size++;
   if ( data >= 253 )
        data = 0;
    }
    printf("\n Total address :%d \n", size);
    printf( "DONE\n" );
    printf( "Read test pattern from SDRAM...              \n" );
    ptr = (unsigned char*)( SDRAM_ADDRESS );
    data = 0x00;
    error = 0;
    count = MEMORY_SIZE;
    while ( count-- )
    {
      if ( *ptr++ != data++ )
      {
      printf( "Error at address 0x%08x\n", ptr-1 );
      error++;
      }
      if ( data >= 253 )
      data = 0;
    }
    printf("\n Total Error Found:%d \n\n", error);
    printf( "DONE\n" );
    asm volatile("ebreak");
    

}
