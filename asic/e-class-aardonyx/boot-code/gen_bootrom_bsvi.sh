#!/bin/bash
datawidth=32
depth=48
echo "function Bit#(datawidth) fn_boot_ROM (Bit#(index_size) addr);" >bootrom.bsvi
echo "  return">>bootrom.bsvi
echo "    case(addr)">>bootrom.bsvi
#for (( i=0; i<=$depth; i++ ))
i=0
input="./boot.mem"
while IFS= read -r line
do
  if [ $i -lt $depth ]
  then
    index=$((i*$datawidth/8))
    echo "      'd$i: 'h$line;">>bootrom.bsvi
    i=$((i+1))
  else
    break
  fi
done < "$input"
echo "      default: 'h0;">>bootrom.bsvi
echo "    endcase;">>bootrom.bsvi
echo "endfunction: fn_boot_ROM">>bootrom.bsvi
