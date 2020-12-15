.text
	addi $t2, $zero, -1
	# teste
	beq $t2, $zero, zero		# se t2 == 0
	slt $t3, $t2, $zero		#se t2<0 -> t3=1
	beq $t3, $zero, positivo	
	ori $t0, $zero, 2		# t2 é um numero NEGATIVO
	j exit
positivo: ori $t0, $zero, 1
	  j exit
zero: ori $t0, $zero, 0

exit: sll $t5, $t5, 0			#instrução qualquer
