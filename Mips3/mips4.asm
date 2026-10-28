.data
    msg1: .asciiz "\nDigite o salario atual: "
    msg2: .asciiz "\nNovo salario: R$ "
.text
main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, 0

    mul $t1, $t0, 25
    div $t1, $t1, 100

    add $t2, $t0, $t1

    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 1
    add $a0, $t2, 0
    syscall
