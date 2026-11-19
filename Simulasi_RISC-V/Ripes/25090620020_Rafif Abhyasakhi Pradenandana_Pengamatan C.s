.text
main:
 addi x5, x0, 10
 addi x6, x0, 3
 add  x7, x5, x6
 sub  x8, x5, x6
 lui  x9, 0x10000
 sw   x7, 0(x9)
 lw   x10, 0(x9)
 beq  x7, x10, sama
 addi x11, x0, -1
sama:
 jal  x1, akhir
 addi x12, x0, 99
akhir:
 addi x12, x0, 1
 addi x17, x0, 10
 ecall