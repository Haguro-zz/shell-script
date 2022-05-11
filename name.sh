#!/bin/bash

# Verificação de sistema
if [ -f "/etc/redhat-release" ]
then
        version_SO=$(cat /etc/redhat-release)
else
        version_SO=$(cat /etc/issue | awk '{print $1,$2,$3}')
fi

printf "\n \033[1mDados da Máquina"
printf "=======================\033[m\n"

printf "Data: \033[1;31m"
date "+%A, %d/%m/%Y - %H:%M"
printf "\033[m---------------------------------"

printf "Host: \033[1;31m"
uname -a | cut -d" " -f2
printf "\033[m---------------------------------"

printf "Versão: \033[1;31m"
echo "$version_SO"
printf "\033[m---------------------------------"

printf "Kernel: \033[1;31m"
uname -a | cut -d" " -f6,7
printf "\033[m---------------------------------"

echo "Usuários conectados: \033[1;31m\n"
who -H
printf "\033[m---------------------------------"

printf "Processador: \033[1;31m"
head /proc/cpuinfo | grep "model name" | cut -d" " -f3-20
printf "\033[m---------------------------------"
