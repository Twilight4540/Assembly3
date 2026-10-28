.data
    msg1: .asciiz "\nDigite o primeiro valor: "
    msg2: .asciiz "\nDigite o segundo valor: "
    msg3: .asciiz "\nPrimeiro valor apos a troca: "
    msg4: .asciiz "\nSegundo valor apos a troca: "

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

    add $t2, $t0, 0
    add $t0, $t1, 0
    add $t1, $t2, 0

    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    add $a0, $t0, 0
    syscall

    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    add $a0, $, 0
    syscall