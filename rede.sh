#!/bin/bash

echo -e "\nEndereços de Rede IPv4"
echo

ip a | grep "UP" | cut -d" " -f2 > placas
ip a | grep "inet " | cut -d" " -f6 > enderecos

paste placas enderecos

echo -e "\nEndereços de Rede IPv6"
echo

ip a | grep "UP" | cut -d" " -f2 > placas6
ip a | grep "inet6" | cut -d" " -f6 > enderecos6

paste placas6 enderecos6

rm placas enderecos placas6 enderecos6
echo
