.data 
	.word 0
.text
	lui $s0, 0x1001
	lw $t0, 0($s0)		# pega o valor da posição de memoria armazenada em s0
	
	# teste num < 1
	slti $t6, $t0, 0	
	bne $t6, $zero, exit
	#teste num > 10
	slti $t6, $t0, 11
	beq $t6, $zero, exit
	
	ori $t3, $zero, 0	# t3 = i = 0
	ori $t4, $zero, 1	#auxiliar
	
loop:	lui $s0, 0x1001
	sll $t1, $t3, 2		# $t1 sera o deslocamento p/ end de memoria
	add $s0, $s0, $t1	# end da prox posição da memoria (base + deslocamento) 
	
	#tabuada
	slti $t6, $t4, 11
	beq $t6, $zero, exit
	mult $t0, $t4
	mflo $t5
	sw $t5, 0($s0)
	addi $t3, $t3, 1	# i++
	addi $t4, $t4, 1	# aux++
	j loop
	
exit: sll $t7, $t7, 0