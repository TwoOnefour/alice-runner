#!/bin/bash

[ -f /usr/local/go/bin/go ] && { echo "Go is already installed."; exit 0; }

wget https://go.dev/dl/go1.24.3.linux-amd64.tar.gz -O go.tar.gz
tar -C /usr/local -xzf go.tar.gz
echo export PATH=$PATH:/usr/local/go/bin >> ~/.profile
source ~/.profile
go version