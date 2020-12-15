.text
	ori $t0, $zero, 5
	ori $t1, $zero, 1		# i = 1
	or $t2, $zero, $t0		# auxiliar
loop: 
	sub $t3, $t0, $t1		# 4 - i
	beq $t3, $zero, exit 
	mult $t2, $t3			# t0 = t0(4) * (t0 - i)
	mflo $t2
	addi $t1, $t1, 1		# i++
	j loop
	
exit: add $s0, $zero, $t2
