#Resposta no  registrador $t7
.text
	ori $t0, $zero, 8	# termo N da sequencia de FIBONACCI
	ori $t1, $zero, 0	# primeiro termo da sequencia
	ori $t2, $zero, 1	# segundo termo da sequencia
	
	# Se N = 1(primeiro termo)
	slti $t4, $t0, 0
	bne $t4, $zero, loop
	add $t7, $zero, $t1	
	
	ori $t3, $zero, 1	# termo atual	
loop:
	# termo atual da seq < termo desejado
	slt $t4, $t3, $t0	
	beq $t4, $zero, exit
	
	# calculo
	add $t6, $t2, $t1	# t6 = t2 + t1
	add $t2, $zero, $t1	# t2 = t1
	add $t1, $zero,$t6 	# t1 = t6
	addi $t3, $t3, 1	# termo atual++
	j loop
	
exit: add $t7, $zero, $t1
	
	
	