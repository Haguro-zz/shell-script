#!/bin/bash

echo -e "\n   Dados da Máquina"
echo -e "=======================\n"

printf "Host: \033[1;31m"
uname -a | cut -d" " -f2
echo -e "\033[m"

printf "Versão: \033[1;31m"
uname -a | cut -d" " -f3
echo -e "\033[m"

printf "Kernel: \033[1;31m"
uname -a | cut -d" " -f6,7
echo -e "\033[m"

printf "Usuários conectados: \033[1;31m"
users | column -s "|"
echo -e "\033[m"