# 9x + 7 /2x + 8  valor de x em $t1
# quociente em t2 e resto em t3
# x = -4 ?	O divisor (2x+8) zera e o valor que é colocado no lo = -8 (2*(-4))
.text
	addi $t1, $zero, -4
	
	#9x
	ori $t4, $zero, 9
	multu $t4, $t1		#multu - operação sem sinal
	mflo $t4		#t4 = 9x
	#9x +7
	ori $t5, $zero, 7
	add $t4, $t4, $t5	#t4 = 9x(t4) + 7(t5)
	
	 #2x
	 ori $t5, $zero, 2
	 multu $t5, $t1
	 mflo $t5 		# t5 = 2x
	 #2x + 8
	 ori $t6, $zero, 8
	 add $t5, $t5, $t6	# t5 = 2x +8
	 
	 #divisão hi-RESTO lo-QUOCIENTE
	 div $t4, $t5
	 mflo $t3
	 
	