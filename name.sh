#!/bin/bash

echo -e "\n   \033[1mDados da Máquina"
echo -e "=======================\033[m\n"

printf "Data: \033[1;31m"
date "+%A, %d/%m/%Y - %H:%M"
echo -e "\033[m---------------------------------"

printf "Host: \033[1;31m"
uname -a | cut -d" " -f2
echo -e "\033[m---------------------------------"

printf "Versão: \033[1;31m"
uname -a | cut -d" " -f3
echo -e "\033[m---------------------------------"

printf "Kernel: \033[1;31m"
uname -a | cut -d" " -f6,7
echo -e "\033[m---------------------------------"

echo -e "Usuários conectados: \033[1;31m\n"
echo -e "\033[1;34mUSUÁRIO CONEXÃO DATA HORA IP\033[m" > users
echo -e "\033[33m"$(who)"\033[m" >> users
cat users | column -t -e -c5
rm users
echo -e "\033[m---------------------------------"

printf "Processador: \033[1;31m"
head /proc/cpuinfo | grep "model name" | cut -d" " -f3-20
echo -e "\033[m---------------------------------"
