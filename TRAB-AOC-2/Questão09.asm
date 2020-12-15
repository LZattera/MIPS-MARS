.text
	ori $t0, $zero, 1	# dividendo
	ori $t1, $zero, 1	# divisor
loop:
	div $t0, $t1
	mfhi $t3
	add $t4, $t4, $t3	# soma += soma
	addi $t1, $t1, 1	# divisor ++
	#teste divisor <= 100
	slti $t3, $t1, 101
	beq $t3, $zero, exit
	j loop
	
exit: 
	lui $s0, 0x1001
	sw $t4, 0($s0)