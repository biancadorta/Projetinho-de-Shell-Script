#!/bin/bash
clear

Principal(){
clear
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
	clear
	echo 
	echo "Sub-opcoes:"
	echo 
	echo "a. Criar grupo."
	echo "b. Alterar nome de grupo ja criado."
	echo "Qual sua sub-opcao? "
	read subOp

	case $subOp in 
	a) CreateGroup;;
	b) AlterNameGroup;;
	*) echo "Digite um valor valido."; Grupo;;
	esac	
}

CreateGroup(){
	echo 
	echo "Digite o nome do grupo:"
	read nomeGroup
	groupadd $nomeGroup		
}

AlterNameGroup(){
	echo 
	echo "Qual o nome antigo do grupo?"	
	read nome_antigo
	echo "Digite o novo nome do grupo:"
	read nome_novo
	#validar o nome antigo para ver se existe
	groupmod $nome_novo $nome_antigo	
}

Usuario(){
	echo "Digite o nome do Usuario a ser criado"
	read nome_usu
	adduser $nome_usu
}

Permissoes(){
	clear
	echo 
	echo "Sub-opcoes: "
	echo 
	echo "a. Alterar o dono de um arquivo ou diretorio."
	echo "b. Alterar o grupo dono de um arquivo ou diretorio."
	echo "c. Alterar as permissoes de um arquivo ou diretorio 
	separadamente."
	read subopPerm	
	case $subopPerm in
		a) AlterarDonoArq;;
		b) AlterarGroupDono;;
		c) AlterarPermissoes;;
		*) echo "Digite um valor válido."; Permissoes;;
	esac
}

AlterarDonoArq(){
	echo "Escreva o nome do novo proprietario"
	read nome_prop
	echo "Forneça o nome do arquivo ou diretorio"
	read arq_dir
	
	chown $nome_prop $arq_dir	
}

AlterarGroupDono(){
	clear
	echo "Digite o nome do arquivo ou diretorio, para alterar seu grupo dono."
	read nomeArq_dir
	echo "Qual sera o novo grupo dono do arquivo?"
	read ngrp	 

	chgrp $ngrp $nomeArq_dir	
}

AlterarPermissoes(){
	echo
	echo "Digite o nome do arquivo ou diretorio"
	read nome_arq_dir 


	quem=("proprietario" "grupo" "publico") #vetooor

	echo "Responda 1 para sim e qualquer outro caracter para nao"
	echo 

	vetor[0]=0
	vetor[1]=0
	vetor[2]=0
	i=0

	while [ $i -lt 3 ];
	do

		echo		
		echo "${vetor[i]} "
		echo

		echo "${quem[i]} podera executar?"
		read aux1
		
		if [ $aux1 == 1 ]
		then
			let vetor[i]=vetor[i]+1; #
		fi

		echo		
		echo "${vetor[i]} "
		echo

		echo "${quem[i]} podera gravar?"
		read aux2

		if [ $aux2 == 1 ]
		then
			let vetor[i]=vetor[i]+2;
		fi
		echo		
		echo "${vetor[i]} "
		echo

		echo "${quem[i]} podera ler?"
		read aux3

		if [ $aux3 == 1 ]
		then
			let vetor[i]=vetor[i]+4;
		fi		
		
		echo		
		echo "${vetor[i]} "
		echo

		let i=i+1
	done

	echo "chmod ${vetor[0]}${vetor[1]}${vetor[2]} $nome_arq_dir"

	chmod ${vetor[0]}${vetor[1]}${vetor[2]} $nome_arq_dir
}

Principal


