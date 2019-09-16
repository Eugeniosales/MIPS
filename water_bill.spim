.data 
	newLine: .asciiz "\n"
	
.text

	main:
		addi $t1, $zero, 11
		addi $t2, $zero, 31
		addi $t3, $zero, 101
		addi $t5, $zero, 100
	
		li $v0, 5
		syscall
		
		move $t0, $v0
		
		
		bgt $t1, $t0, faixa1
		bgt $t2, $t0, faixa2
		bgt $t3, $t0, faixa3
		bgt $t0, $t5, faixa4
		
		
		li $v0, 10
		syscall
		
	
	faixa4:
		addi $t4, $zero, 167
		
		subi $t5, $t0, 100
		mul $t5, $t5, 5
		add $t4, $t4, $t5
		
		li $v0, 1
		move $a0, $t4
		syscall
		
		li $v0, 4
		la $a0, newLine
		syscall
		
		li $v0, 10
		syscall
	faixa3:
		addi $t4, $zero, 27
		
		subi $t5, $t0, 30
		mul $t5, $t5, 2
		add $t4, $t4, $t5
		
		li $v0, 1
		move $a0, $t4
		syscall
		
		li $v0, 4
		la $a0, newLine
		syscall
		
		li $v0, 10
		syscall 
	
	faixa2:
		addi $t4, $zero, 7
		
		subi $t5, $t0, 10
		add $t4, $t4, $t5
		
		li $v0, 1
		move $a0, $t4
		syscall
		
		li $v0, 4
		la $a0, newLine
		syscall
		
		li $v0, 10
		syscall
	faixa1:
		addi $t4, $zero, 7
		
		li $v0, 1
		move $a0, $t4
		syscall
		
		li $v0, 4
		la $a0, newLine
		syscall
		
		li $v0, 10
		syscall 
	
		
	

	