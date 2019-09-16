.data
	newLine: .asciiz "\n"
	A: .asciiz "A"
	B: .asciiz "B"
	C: .asciiz "C"
	D: .asciiz "D"
	E: .asciiz "E"

.text

	main: 
		addi $t0, $zero, 36
		addi $t1, $zero, 61
		addi $t2, $zero, 86
		addi $t3, $zero, 101
	
		li $v0, 5
		syscall
		
		move $t4, $v0
		
		jal avaliacao
		
		li $v0, 10
		syscall
		
	avaliacao:
	
		beq $t4, $zero, printE
		bgt $t0, $t4, printD #(t0 > t4)
		bgt $t1, $t4, printC #(t1 > t4)
		bgt $t2, $t4, printB #(t2 > t4)
		bgt $t3, $t4, printA #(t3 > t4)	
		jr $ra
		
	exit:
		li $v0, 4
		la $a0, newLine
		syscall
		
		li $v0, 10
		syscall

		
	printE:
		li $v0, 4
		la $a0, E
		syscall
		
		jal exit
		
		
	printD:
		li $v0, 4
		la $a0, D
		syscall
		
		jal exit
	
	
	printC:
		li $v0, 4
		la $a0, C
		syscall
		
		jal exit
	
	printB:
		li $v0, 4
		la $a0, B
		syscall
		
		jal exit
	
	printA:
		li $v0, 4
		la $a0, A
		syscall
		
		jal exit
	