#!/bin/bash

echo "download minikube"
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.7.1/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/

echo "download kubectl"
curl -Lo kubectl http://storage.googleapis.com/kubernetes-release/release/v1.3.0/bin/darwin/amd64/kubectl && chmod +x kubectl && sudo mv kubectl /usr/local/bin/

echo "download tidb-on-k8s"
git clone --progress https://github.com/pingcap/tidb-on-k8s

echo "start minikube signel node vm"
minikube start 
