.data
    msg1: .asciiz "\nDigite o valor em dolar (US$): "
    msg2: .asciiz "\nValor em reais (R$): "

.text
main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, 0

    li $t1, 5
    mul $t2, $t0, $t1

    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 1
    add $a0, $t2, 0
    syscall