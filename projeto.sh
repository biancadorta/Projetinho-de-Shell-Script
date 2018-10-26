#!/bin/bash
clear

Principal(){
echo "=========PROJETINHO DE SHELL SCRIPT============="
echo "Opcoes para :"
echo 
echo "1) Grupo"
echo "2) Usuario"
echo "3) Permissoes de acesso"
echo "Qual sua opcao? " 
read opcao

case $opcao in
1) Grupo;;
#2) Usuario;;
3) Permissoes;; 
*) echo "Digite um parametro valido." Principal;; #caso nao seja igual a nenhuma das opcoes anteriores
esac #indica o fim do case
}

Grupo(){
	echo 
	echo "Sub-opcoes:"
	echo 
	echo "a. Criar grupo."
	echo "b. Alterar nome de grupo ja criado."
	echo "Qual sua sub-opcao? "
	read subOp

	#case $subOp
	#a) CreateGroup();;
	#b) AlterNameGroup();;
	#*) echo "Digite um valor valido." Grupo;;
	#esac	
}

#CreateGroup(){}

#AlterNameGroup(){}

#Usuario(){}

Permissoes(){
	echo 
	echo "Sub-opcoes: "
	echo 
	echo "a. Alterar o dono de um arquivo ou diretorio."
	echo "b. Alterar o grupo dono de um arquivo ou diretorio."
	echo "c. Alterar as permissoes de um arquivo ou diretorio 
	separadamente."
	read $subop
	
}

Principal


