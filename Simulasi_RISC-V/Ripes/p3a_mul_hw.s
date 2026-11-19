.text
main:
    li a0, 123
    li a1, 45
    mul s0, a0, a1
    div s1, s0, a1
    li t0, 7
    rem s2, s0, t0
    li a7, 10
    ecall