#!/bin/bash

apt update
apt install -y nginx
service nginx restart

useradd -m -p Senha123! guilherme

