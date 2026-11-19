.data
array: .word 7, 23, -4, 15, -42, 8, 0, 19
N: .word 8
.text
main:
 li t0, 1
 li t1, 10
 li s0, 0
loop_jumlah:
 add s0, s0, t0
 addi t0, t0, 1
 ble t0, t1, loop_jumlah
 la t2, array
 lw t3, N
 lw s1, 0(t2)
 li t4, 1
loop_maks:
 bge t4, t3, selesai
 slli t5, t4, 2
 add t5, t2, t5
 lw t6, 0(t5)
 blt t6, s1, lewati
 mv s1, t6
lewati:
 addi t4, t4, 1
 j loop_maks
selesai:
 li a7, 10
 ecall