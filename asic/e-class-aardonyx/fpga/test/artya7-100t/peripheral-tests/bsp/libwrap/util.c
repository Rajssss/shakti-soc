/*
	util.c - src file for util
*/


void DelayLoop(unsigned long cntr1, unsigned long cntr2)
{
    unsigned long tmpCntr = cntr2;
    while(cntr1--)
    {
        tmpCntr = cntr2;
        while(tmpCntr--);
    }

}



/*********************************************************************
* Brief Description     : returns the value stored at a given address
*                         Here we assume the word size to be 32 bits for gpio     
* Parameters            : int*
* Return                : int
* *******************************************************************/

long int read_word(int *addr)
{
  return *addr;
}

/*****************************************************
* Brief Description     : writes a value to an address
* Parameters            : int*
* Return                : int
* ****************************************************/

void write_word(int *addr, unsigned long val)
{
    *addr = val;
}


