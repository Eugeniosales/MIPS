.data
		newLine: .asciiz "\n"
		

.text

	main: 
		li $v0, 5
		syscall
		
		move $a1, $v0
		
		sub $a1, $a1, 1
			
		addi $t0, $zero, 0
		addi $t2, $zero, 0
		
		
	while:
	
		bgt $t0, $a1, exit
		
		li $v0, 5
		syscall
		
		move $s0, $v0
		
		jal addNumber
		
		addi $t0, $t0, 1
		
		j while
		
	addNumber:
		
		add $t2, $t2, $s0
		jr $ra
		
	exit:
	
		li $v0, 1
		move $a0, $t2
		syscall
		
		li $v0, 4
		la $a0, newLine
		syscall
	
		li $v0, 10
		syscall	