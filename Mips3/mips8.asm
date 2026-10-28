.data
    msg1: .asciiz "\nDigite o valor da compra (1000 a 9999): "
    msg2: .asciiz "\nValor invalido!"
    msg3: .asciiz "\nDigite o valor da parcela (100 a 500): "
    msg4: .asciiz "\nQuantidade de parcelas: "

.text
main:
compra:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    add $t0, $v0, 0

    blt $t0, 1000, erro_compra
    bgt $t0, 9999, erro_compra
    j parcela

erro_compra:
    li $v0, 4
    la $a0, msg2
    syscall
    j compra

parcela:
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 5
    syscall
    add $t1, $v0, 0

    blt $t1, 100, erro_parcela
    bgt $t1, 500, erro_parcela
    j calcular

erro_parcela:
    li $v0, 4
    la $a0, msg2
    syscall
    j parcela

calcular:
    div $t0, $t1
    mflo $t2
    mfhi $t3

    beq $t3, $zero, resultado
    addi $t2, $t2, 1

resultado:
    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    add $a0, $t2, 0
    syscall
