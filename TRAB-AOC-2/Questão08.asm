.text
	ori $t0, $zero, 1	# aux
	ori $t1, $zero, 0	# contador PARES
	ori $t2, $zero, 0	# contador IMPARES
	ori $t3, $zero, 2
	
loop:
	#teste PAR/IMPAR
	div $t0, $t3
	mfhi $t4
	beq $t4, $zero, par
	
	#impar
	addi $t2, $t2, 1	#cont IMPAR ++
	add $t7, $t7, $t0	# soma dos valores impares
	# teste Aux <= 10
	slti $t4, $t0, 9
	beq $t4, $zero, media
	addi $t0, $t0, 1	# aux ++
	j loop
media:
	div $t7, $t3		# Soma dos valores impares / 2
	mflo $t7
	j exit
	
par: 
	addi $t1, $t1, 1	# cont PAR++
	add $t6, $t6, $t0	#soma dos valores pares
	# teste Aux <= 10
	slti $t4, $t0, 10
	beq $t4, $zero, exit
	addi $t0, $t0, 1	# aux ++
	j loop
	
exit: sll $t4, $t4, 0