.data
	# Bloco para dados em memória
	mensagem: .asciiz "Ola Mundo"  #Inidica com .asciiz que a variavel mensagem é uma string e atribui Ola mundo a esta variavel
.text
main:
	# Bloco para escrita de comandos
	li $v0,4 # comando para imprimir uma cadeia de caracteres 
	la $a0, mensagem # move o conteudo de mensagem para o registrador $a0
	syscall # comando para executar as instruçõ
	li $v0, 10
	syscall
