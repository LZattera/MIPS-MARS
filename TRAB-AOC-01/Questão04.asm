#  y = 3x(ao quadrado)?5x+7 
# o resultado y no registrador $t6

# Fa�a um teste substituindo a primeira instru��o addi por uma instru��o ori equivalente e responda, nos
#coment�rios, qual o resultado quando s�o usados n�meros positivos e n�meros negativos.
	# Quando colocado ori no lugar de addi ocorre um erro(intru��o ou formato nao � permitido) quando o valor de x � negativo
	#mas n�o ocorre erros quando o valor da variavel � positivo
.text
	#addi $t5, $zero, -1	# x
	ori, $t5, $zero, -1
	
	#5x
	ori $t7, $zero, 5
	mult $t7, $t5		
	mflo $t7		# t7 = 5x
	#Quadrado
	mult $t5, $t5
	mflo $t5		# t5 = x * x
	#3x(ao quadrado)
	ori $t4, $zero, 3
	mult $t4, $t5
	mflo $t4		# t4 = 3x(ao quadrado)
	# 3x(ao quadrado) - 5x
	sub $t1, $t4, $t7
	# ... + 7
	ori $t2, $zero, 7
	add $t6, $t1, $t2