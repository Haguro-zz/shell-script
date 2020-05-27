#!/bin/bash

echo -e "\nEndereços de Rede IPv4"
echo

ip a | grep "UP" | cut -d" " -f2 > placas
ip a | grep "inet " | cut -d" " -f6 > enderecos

paste placas enderecos
rm placas enderecos
echo
