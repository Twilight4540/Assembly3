.data
    msg1: .asciiz "\nDigite o primeiro numero: "
    msg2: .asciiz "\nDigite o segundo numero: "
    msg3: .asciiz "\nOs numeros sao iguais."
    msg4: .asciiz "\nOs numeros sao diferentes."
    msg5: .asciiz "\nMaior: "
    msg6: .asciiz "\nMenor: "

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

    beq $t0, $t1, iguais

    li $v0, 4
    la $a0, msg4
    syscall

    bgt $t0, $t1, primeiro_maior

    add $t2, $t1, 0
    add $t3, $t0, 0
    j mostrar

primeiro_maior:
    add $t2, $t0, 0
    add $t3, $t1, 0

mostrar:
    li $v0, 4
    la $a0, msg5
    syscall

    li $v0, 1
    add $a0, $t2, 0
    syscall

    li $v0, 4
    la $a0, msg6
    syscall

    li $v0, 1
    add $a0, $t3, 0
    syscall

    j fim

iguais:
    li $v0, 4
    la $a0, msg3
    syscall

fim:
    li $v0, 10
    syscall
