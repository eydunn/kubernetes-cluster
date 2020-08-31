#!/usr/bin/env bash

VERSION=v0.16.1
#PLATFORM=linux-amd64
PLATFORM=darwin-amd64

#kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/$VERSION/cert-manager.yaml

curl -L -o kubectl-cert-manager.tar.gz https://github.com/jetstack/cert-manager/releases/download/$VERSION/kubectl-cert_manager-$PLATFORM.tar.gz
tar xzf kubectl-cert-manager.tar.gz kubectl-cert_manager
sudo mv kubectl-cert_manager /usr/local/bin
rm kubectl-cert-manager.tar.gz