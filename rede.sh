#!/bin/bash

echo -e "\n   Informações de Rede   "
echo -e "=========================\n"

ifconfig | grep "UP" | cut -d" " -f1
ifconfig | grep "inet"