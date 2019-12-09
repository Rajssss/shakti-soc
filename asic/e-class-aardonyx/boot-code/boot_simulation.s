#Storing all required addr
la s1,wait_for_tf #addr of wait_for_tf

li sp,0x100     #QSPI Base Reg
li s0,0x141b0001  #value to be written to dcr
li a4,0x4		  #value to be written to dlr

##Program begins here
li a5,0xFFF 
wait_loop: addi a5,a5,-1
bnez a5,wait_loop

li a1,0x001b0001
sw a1,4(sp)       #dcr
li a1,0x031f0f01
sw a1,0(sp)       #cr

##flashQuadSPIDDRXIP

#flashWriteVolatileConfigReg

#micron_write_enable
li a1,0x00003106
sw a1,0x14(sp)    #ccr
c.jalr s1          #wait_for_tcf
#done with micron_write_enable

c.li a3,0x1
sw a3,0x10(sp)    #dlr
li a1,0x40
sb a1,0x20(sp)    #dr
li a1,0x01000101
sw a1,0x14(sp)      #ccr
c.jalr s1          #wait_for_tcf
## done with flashWriteVolatileConfigReg

#Wait_for_wip
#flashReadStatusRegister
wait_for_wip: 
sw a4,0x10(sp)    #dlr
li a1,0x05000105
sw a1,0x14(sp)    #ccr
c.jalr s1          #wait_for_tcf
lw a0,0x20(sp)    #dr   #flash status
andi a0,a0,0x1
bnez a0,wait_for_wip

#Continue from 8000280c, L1772 in dump
#    i.e. from line 312 in qspi_micron.c
li a1,0x87a83dee
sw a1,0x14(sp)    #ccr
sw s0,0x4(sp)     #dcr
sw a4,0x10(sp)    #dlr
sw x0,0x18(sp)    #ar
c.jalr s1          #wait_for_tcf
lw a2,32(sp)


#trying XIP now
li a1,0x8fa83c00
sw a1,0x14(sp)    #ccr
sw s0,0x4(sp)     #dcr

##### flashQuadSPIDDRXIP done

#Begin reading from QSPI and write to RAM
li a3,0x80000000
li a5,0x90000000
li a4,0x5
li a5,0x90000004
inc_addr:
lw a2,0(a5)
addi a3,a3,0x4
addi a5,a5,0x4
addi a4,a4,-1
bnez a4,inc_addr
fence.i
li a3,0x80000000
jr a3

wait_for_tf:
lw a2,8(sp)       #sr
andi a2,a2,0x2
beqz a2,wait_for_tf
li a2,0x1b
sw a2,0xC(sp)     #fr
ret

