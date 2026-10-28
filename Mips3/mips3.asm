.data
    msg1: .asciiz "\nDigite o mes de nascimento: "
    msg2: .asciiz "\nDigite o ano de nascimento: "
    msg3: .asciiz "\nDigite o mes atual: "
    msg4: .asciiz "\nDigite o ano atual: "
    msg5: .asciiz "\nIdade em meses: "

.text
main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, 0

    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    add $t1, $v0, 0

    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 5
    syscall
    add $t2, $v0, 0

    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 5
    syscall
    add $t3, $v0, 0

    sub $t4, $t3, $t1

    li $t5, 12
    mul $t4, $t4, $t5

    sub $t6, $t2, $t0

    add $t4, $t4, $t6

    li $v0, 4
    la $a0, msg5
    syscall

    li $v0, 1
    add $a0, $t4, 0
    syscall