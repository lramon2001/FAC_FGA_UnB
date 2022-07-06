.data 

.text

main:
	li $v0,5 #lendo o primeiro numero e guardando o valor dele no registrador v0
	syscall 
	move $t0, $v0 # mandando o valor no registrador $v0 para o registrador $t0
		
	li $v0,5 #lendo o segundo numero e guardando o valor dele no registrador v0
	syscall  
	move $t1,$v0 #mandando o valor no registrador $v0 para o registrador $t1
		
	add $t2,$t0,$t1 # guardando em $t2 a soma do valor de $t0 e $t1
		
	move $a0,$t2 # mandando o valor da soma para o registrador $a0 para que assim seja feita a soma
		
	li $v0,1 #printando o inteiro contido em $a0
	syscall
		
	li $v0,10 #encerrando o programa
	syscall 
		
