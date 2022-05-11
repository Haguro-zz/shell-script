#!/bin/bash

# Verificação de sistema
if [ -f "/etc/redhat-release" ]
then
        version_SO=$(cat /etc/redhat-release)
else
        version_SO=$(cat /etc/issue)
fi

echo -e "\n   \033[1mDados da Máquina"
echo -e "=======================\033[m\n"

printf "Data: \033[1;31m"
date "+%A, %d/%m/%Y - %H:%M"
echo -e "\033[m---------------------------------"

printf "Host: \033[1;31m"
uname -a | cut -d" " -f2
echo -e "\033[m---------------------------------"

printf "Versão: \033[1;31m"
echo "$version_SO"
echo -e "\033[m---------------------------------"

printf "Kernel: \033[1;31m"
uname -a | cut -d" " -f6,7
echo -e "\033[m---------------------------------"

echo -e "Usuários conectados: \033[1;31m\n"
who -H
echo -e "\033[m---------------------------------"

printf "Processador: \033[1;31m"
head /proc/cpuinfo | grep "model name" | cut -d" " -f3-20
echo -e "\033[m---------------------------------"
