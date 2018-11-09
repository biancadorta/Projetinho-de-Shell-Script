#!/bin/bash
clear



Principal(){
echo "=========PROJETINHO DE SHELL SCRIPT============="

while :
do
	echo "Escolha uma opcao :"
	echo 
	echo "1) Grupo"
	echo "2) Usuario"
	echo "3) Permissoes de acesso"
	echo "4) Sair"	
	echo "Qual sua opcao? " 
	read opcao

	case $opcao in
		1) Grupo;;
		2) Usuario;;
		3) Permissoes;; 
		4) exit;;
		*) echo "Digite um parametro valido."; Principal;; #caso nao seja igual a nenhuma das opcoes anteriores
	esac #indica o fim do case
done
}

Grupo(){
	echo 
	echo "Sub-opcoes:"
	echo 
	echo "a. Criar grupo."
	echo "b. Alterar nome de grupo ja criado."
	echo "Qual sua sub-opcao? "
	read subOp

	#case $subOp in
	#a) CreateGroup;;
	#b) AlterNameGroup;;
	#*) echo "Digite um valor valido." Grupo;;
	#esac	
}

#CreateGroup(){}

#AlterNameGroup(){}

Usuario(){
	
	echo "Digite o nome do Usuario a ser criado"
	read nome_usu
	adduser $nome_usu

}

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