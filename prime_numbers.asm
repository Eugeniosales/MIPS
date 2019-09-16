.data

	message: .asciiz "Entrada invalida."
	newLine: .asciiz "\n"

.text	
	main:
		# Ler o inteiro a ser fatorado
		li $v0, 5 
		syscall
		move $t0, $v0
	
		# Se o númeoro lido estiver ultrapassando os limites permitidos, o programa encerrará
		bgt $t0, 32767, invalid
		blt $t0, 1, invalid
	
		li $t1, 2 # t1 = 2
		

	while:	
		bge $t1, $t0, exit # Se t1 > t0, o programa encerra
		
		div $t0, $t1
		mfhi $t2            # t2 = t0 % t1
		bnez $t2, increment # Se t2 não for divísivel, vai para label increment
		
		# Imprimir t1
		li $v0, 1
		move $a0, $t1
		syscall

		#Imprimir nova linha
		li $v0, 4
		la $a0, newLine
		syscall
		
		mflo $t0 	    #t0 = t0 / t1
		
		j while

		
	increment:
		addi $t1, $t1, 1 #  t1= t1 + 1
		j while          #  Retorna para label while
		
	exit:
		# Imprimir t1
		li $v0, 1
		move $a0, $t0
		syscall

		li $v0, 4
		la $a0, newLine
		syscall
		
		#Encerra o programa
		li $v0, 10
		syscall
		
	invalid:
	
		#Imorime menssagem de entrada invalida
		li $v0, 4
		la $a0, message
		syscall
		
		li $v0, 4
		la $a0, newLine
		syscall
	
		li $v0, 10
		syscall
