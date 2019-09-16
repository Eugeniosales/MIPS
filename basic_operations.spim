.data

	ADD: .asciiz "ADD: "
	SUB: .asciiz "\nSUB: "
	AND: .asciiz "\nAND: "
	OR: .asciiz "\nOR: "
	XOR: .asciiz "\nXOR: "
	SLL: .asciiz "\nSLL(3): "
	SRL: .asciiz "\nSRL(1): "
	SPACE: .asciiz "\n"

.text



	#Get the number 1
	li $v0, 5
	syscall
	
	#Move the value obtained to t0
	move $t0, $v0
	
	#Get the number 2
	li $v0, 5
	syscall
	
	#Move the value obtained to t1
	

	move $t1, $v0
	
	#Adding t0 and t1 and putting it on t2
	add $t2, $t0, $t1

	#Message indicanting the sum
	li $v0, 4
	la $a0, ADD
	syscall
	
	#Print the number
	li $v0, 1
	move $a0, $t2
	syscall
	
	#subtracting t0 and t1 and putting it on t2
	sub $t2, $t0, $t1
	
	 #Message indicating the subtraction
	 li $v0, 4
	 la $a0, SUB
	 syscall
	 
	 #Print the number
	 li $v0, 1
	 move $a0, $t2
	 syscall
	
	#Logical operation: AND
	and $t2, $t0, $t1
	
	#Print the message indicantig the logical operation
	li $v0, 4
	la $a0, AND
	syscall
	
	#Print the number
	li $v0, 1
	move $a0, $t2
	syscall
	
	#Logical Operation: OR
	or $t2, $t0, $t1
	
	#Print the message indicating the OR operation
	li $v0, 4
	la $a0, OR
	syscall
	
	
	#Print the number
	li $v0, 1
	move $a0, $t2
	syscall
	
	#Logical Operation: XOR
	xor $t2, $t0, $t1
	
	#Print the message indicating the XOR operation
	li $v0, 4
	la $a0, XOR
	syscall
	
	#Print the number
	li $v0, 1
	move $a0, $t2
	syscall
	
	#Shift left logical operation
	sll $t2, $t0, 3
	
	#Print the mensage indicating the sll operation
	li $v0, 4
	la $a0, SLL
	syscall
	
	#Print the number
	li $v0, 1
	move $a0, $t2
	syscall
	
	#Shift right logical operation
	 srl $t2, $t1, 1
	 
	#Print the message indicating the srl operation
	 li $v0, 4
	 la $a0, SRL
	 syscall
	 
	#Print the number
	 li $v0, 1
	 move $a0, $t2
	 syscall
	 
	 #Print the final /n
	 
	 li $v0, 4
	 la $a0, SPACE
	 syscall
	
	#Leaving the program
	 li $v0, 10
	 syscall
	 
