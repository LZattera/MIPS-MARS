.text
	ori $t0, $zero, 32767		#7FFF
	sll $t0, $t0, 16
	addu $t0, $t0, $t0		
	
	# Resultado = 0xfffe0000 / -131072 : O resultado esta errado pois foi feita soma de dois numeros positivos 
	#que teve um resultado negativo
	
	# Se trocarmos a instru��o addu pela instru��o add vai gerar um erro pois a soma resulta em overflow pois a
	#instru��o add usa o bit de sinal 
	
	# addu faz a soma interpretanto os numeros sem sinal (+/-) evitado o overflow