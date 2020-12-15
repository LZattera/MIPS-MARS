# flags: $t1 = 0 se par, $t1 = 1 se ímpar; $t2 = 0 se zero, $t2 = 1 se positivo ou $t2 = 2 se negativo
.text 
	addi $t0, $zero, 2
	
	# Posi/Neg/Zero
	beq $t0, $zero, zero
	slti $t3, $t0, 0
	beq $t3, $zero, positivo
	ori $t2, $zero, 2 # t0 é negativo
	j ParImpar	
zero: ori $t2, $zero, 0
      j ParImpar
positivo: ori $t2, $zero, 1
          j ParImpar
          
ParImpar:
	ori $t3, $zero, 2
	div $t0, $t3
	mfhi $t3
	slti $t4, $t3, 0
	bne $t4, $zero, Impar
	ori $t1, $zero, 0 # t0 é par
	j exit
Impar: ori $t1, $zero, 1  # t0 é impar
	j exit
exit: sll $t5, $t5, 0	
	
	