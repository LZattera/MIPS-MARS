.text
	ori $t0, $zero, 3
	
	# media <= 7
	slti $t3, $t0, 7	#compara t0 < 7 -> Sim = t3: 1 / Não = t3: 0 
	beq $t3, $zero, aprovado
	# media > 3
	slti $t3, $t0, 3
	bne $t3, $zero, reprovado
	# EXAME -> media >=3 e media < 7
	ori $t1, $zero, 1
	j exit
aprovado: ori $t1, $zero, 2
	  j exit
reprovado: ori $t1, $zero, 0 
	   j exit
exit: sll $t5, $t5, 0 