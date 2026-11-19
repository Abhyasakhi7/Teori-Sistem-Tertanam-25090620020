.text
main:
 li a0, 5
 jal ra, jumlah_kuadrat
 mv s0, a0
 li a7, 10
 ecall

jumlah_kuadrat:
 addi sp, sp, -16
 sw ra, 12(sp)
 sw s1, 8(sp)
 sw s2, 4(sp)
 mv s1, a0
 li s2, 0
ulang:
 beqz s1, keluar
 mv a0, s1
 jal ra, kuadrat
 add s2, s2, a0
 addi s1, s1, -1
 j ulang
keluar:
 mv a0, s2
 lw s2, 4(sp)
 lw s1, 8(sp)
 lw ra, 12(sp)
 addi sp, sp, 16
 ret

kuadrat:
 mul a0, a0, a0
 ret