#!/bin/bash

# Verificação de sistema
if [ -f "/etc/redhat-release" ]
then
        version_SO=$(cat /etc/redhat-release)
        version_kernel=$(uname -a | awk '{print $3}' | cut -d "-" -f1)
else
        version_SO=$(cat /etc/issue | awk '{print $1,$2,$3}')
        version_kernel=$(uname -a | cut -d" " -f6,7)
fi

printf "\n \033[1mDados da Máquina\n"
printf "\n=======================\033[m\n"

printf "\nData: \033[1;31m"
date "+%A, %d/%m/%Y - %H:%M"
printf "\033[m---------------------------------\n"

printf "Host: \033[1;31m"
uname -a | cut -d" " -f2
printf "\033[m---------------------------------\n"

printf "Distro: \033[1;31m"
echo "$version_SO"
printf "\033[m---------------------------------\n"

printf "Kernel: \033[1;31m"
echo "$version_kernel"
printf "\033[m---------------------------------\n"

echo "Usuários conectados: \033[1;31m\n"
who -H
printf "\033[m---------------------------------\n"

printf "Processador: \033[1;31m"
head /proc/cpuinfo | grep "model name" | cut -d" " -f3-20
printf "\033[m---------------------------------\n"
