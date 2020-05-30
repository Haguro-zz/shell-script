#!/bin/bash
echo -e "\n\033[1;33m   Dispositivos de Rede"
echo -e "==========================\033[m"

echo -e "\n\033[1;33mEndereços de Rede IPv4\033[m"
echo

ip a | grep "UP" | cut -d" " -f2 > placas
ip a | grep "inet " | cut -d" " -f6 > enderecos

paste placas enderecos

echo -e "\n\033[1;33mEndereços de Rede IPv6\033[m"
echo

ip a | grep "UP" | cut -d" " -f2 > placas6
ip a | grep "inet6" | cut -d" " -f6 > enderecos6

paste placas6 enderecos6

rm placas enderecos placas6 enderecos6
echo
