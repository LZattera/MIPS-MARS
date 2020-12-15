#SOMA
.data#random access memory
	n1: .word 5
	n2: .word 10
.text
	lw $t0, n1($zero)	#carregou o valor das variaveis para os registradores 
	lw $t1, n2($zero)
	
	add $t2, $t0, $t1	# n1+n2 (t2 = t0 + t1)	
	
	#print o resultado
	li $v0, 1
	add $a0, $zero, $t2	#coloca no reg a0 o resultado da conta
	syscall