.data

	space: .asciiz "\n"

.text

	main: 

	#reading

	li $v0, 5
	syscall
	
	move $a1, $v0
	
	li $v0, 5
	syscall
	
	move $a2, $v0
	
	#calling the function
	jal subNumbers
	
	#Print
	
	li $v0, 1
	move $a0, $v1
	syscall
	
	#Space
	
	li $v0, 4
	la $a0, space
	syscall
	
	#Leaving
	li $v0, 10
	syscall
	
	subNumbers:
		sub $v1, $a1, $a2
		jr $ra
	
	