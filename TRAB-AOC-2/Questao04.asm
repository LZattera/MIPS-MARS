# t0 = 1 -> 5-17
# t0 = 2 -> 18 ... 
.text
	ori $s0, $zero, 3
	
	# <= 18
	slti $t1, $s0, 18
	beq $t1, $zero, adulto
	# 5-17
	slti $t1, $s0, 5
	beq $t1, $zero, infantil
	ori $t1, $zero, 0		#não entra nas categorias
	j exit
adulto: ori $t0, $zero, 2
	j exit
infantil: ori $t0, $zero, 1
	  j exit
exit: sll $t5, $t5, 0