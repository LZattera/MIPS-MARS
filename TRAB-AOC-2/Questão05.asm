#impares entre 100-200
.text
	ori $t0, $zero, 0	# t0 = i = 0 
	ori $t4, $zero, 100

loop:	lui $s0, 0x1001		#endereço base p/ o vetor de num IMPARES
	sll $t1, $t0, 2		#deslocamento p/ end. de memoria
	add $s0, $s0, $t1	#end. do vetor[i](base + deslocamento)

teste200:
	slti $t5, $t4, 200	# t4 < 200 / Sim = 1 | Não = 0
	beq $t5, $zero, exit  	# t4 é maior que 200 
	ori $t3, $zero,2 
	div $t4, $t3
	mfhi $t5
	bne $t5, $zero, impar
	addi $t4, $t4, 1	# $t4++
	j teste200
	
impar: 
	sw $t4, 0($s0)
	addi $t0, $t0, 1	# i++
	addi $t4, $t4, 1	# $t4++
	j loop     

exit: sll $t5, $t5, 0