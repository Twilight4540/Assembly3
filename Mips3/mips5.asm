.data
    msg1: .asciiz "\nDigite o coeficiente A: "
    msg2: .asciiz "\nDigite o coeficiente B: "
    msg3: .asciiz "\nDigite o coeficiente C: "
    msg4: .asciiz "\nDUAS RAIZES REAIS"
    msg5: .asciiz "\nUMA RAIZ REAL"
    msg6: .asciiz "\nNAO EXISTEM RAIZES REAIS"
    
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

    mul $t3, $t1, $t1

    mul $t4, $t0, $t2
    li $t5, 4
    mul $t4, $t4, $t5

    sub $t6, $t3, $t4

    bgtz $t6, duas_raizes
    bltz $t6, sem_raizes
    j uma_raiz

duas_raizes:
    li $v0, 4
    la $a0, msg4
    syscall
    j fim

uma_raiz:
    li $v0, 4
    la $a0, msg5
    syscall
    j fim

sem_raizes:
    li $v0, 4
    la $a0, msg6
    syscall

fim:
    li $v0, 10
    syscall
