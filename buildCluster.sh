#!/bin/bash

echo "lanuch pd"
kubectl create -f tidb-on-k8s/pd.yaml

sleep 10s
echo "lanuch tikv"
kubectl create -f tidb-on-k8s/tikv.yaml

sleep 5s
echo "lanuch tidb"
kubectl create -f tidb-on-k8s/tidb.yaml

MINIKUBE_IP=`minikube ip`

echo "dashboard:  $MINIKUBE_IP:30080    |   mysql:  mysql -h $MINIKUBE_IP -P 30004 -u root -D test"
