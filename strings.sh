#!/usr/bin/bash/env bash

nada="Ela está aqui"
array=(primeiro segundo terceiro)

#echo ${nada} # imprimir variavel
#echo ${nada:3} # imprimir apartir do terceiro caracter
#echo ${#nada} # quanto caracter há na strings nada
#echo ${nada: -5} # pegar os 5 ultimos caracteres
#echo ${nada: -1: 1} # pegar o ultimo caracter

# basico
#algo() {
#  echo "parametro 1: $1"
#  echo "parametro 2: $2"
#  echo "parametro 3: $3"
#}

#algo "$*" # com asterístico coloca todos os parametro na primeira linha
#algo "$@" # coloca os parametro na linha correta

# simplificado
#set -- abcdef; echo ${1: -2:3}
#echo ${array[0]}


#converter a primeira letra em maiusculo
#echo ${array[0]^}
#echo ${array[0]~}

#converter todos os caracter para maiusculo
#echo ${array[0]^^}

#converter em minúsculo
#echo ${nada,}
# echo ${nada,,}

# para criar um loope de 10 arquivos sem uso do for
touch arquivo.txt{1..9}
