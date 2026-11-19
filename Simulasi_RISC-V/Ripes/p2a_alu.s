.text
main:
 li   t0, 12
 li   t1, 10
 li   t2, -8
 add  s0, t0, t1
 sub  s1, t0, t1
 and  s2, t0, t1
 or   s3, t0, t1
 xor  s4, t0, t1
 slli s5, t0, 2
 srli s6, t2, 1
 srai s7, t2, 1
 slt  s8, t2, t0
 sltu s9, t2, t0
 li   a7, 10
 ecall