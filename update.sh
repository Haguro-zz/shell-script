#!/bin/bash

apt update
apt upgrade -y
apt autoremove -y

echo -e "\nSistema atualizado!\n"