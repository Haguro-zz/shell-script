#!/bin/bash

if ping -c4 google.com > /dev/null 2>&1; then
  echo "\nConexão OK!"
else
  echo "\nSem conexão com a internet!\n"
  exit 1
fi

apt update > /dev/null 2>&1
apt upgrade -y >/dev/null 2>&1
apt dist-upgrade -y >/dev/null 2>&1
apt autoremove -y >/dev/null 2>&1

echo "\nSistema atualizado!\n"
