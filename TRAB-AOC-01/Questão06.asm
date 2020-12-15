# Calcular a area do trinagulo retangulo b * h / 2 
# b em t1 / h em t2
# resultado em $t3
.text
	addi $t1, $zero, 160
	addi $t2, $zero, 120
	
	# b*h
	mult $t1, $t2
	mflo $t4		# t4 = b*h
	# ... / 2
	ori $t3, $zero, 2
	div $t4, $t3
	mflo $t3		# t3 recebe o resultado 	 	 	