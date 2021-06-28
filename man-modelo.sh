#!/bin/bash

# Tornar um executável $ chmod +x teste
uso() {
  cat << EOF
  uso: ${0##*/} [opções] [outros]
  opções:
    -f TAG  Exemplo de uso de descrição do que a opção options faz com complemento
    -l LIST Exemplo de uso de descrição do que a opção options faz com complemento
    -h HELP Mostre essa mensagem
EOF
}

if [[ -z $1 || $1 = @(-h|--help) ]]; then
  uso
  exit $(( $# ? 0 : 1 ))
fi
echo -e "Essa é uma mensagem do comando de teste\n"
exit 0
