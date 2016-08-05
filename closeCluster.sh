#!/bin/bash

echo "close pd node"
kubectl delete pod pd-pod1
kubectl delete pod pd-pod2
kubectl delete pod pd-pod3
kubectl delete service pd
kubectl delete service pd1
kubectl delete service pd2
kubectl delete service pd3

echo "close tikv"
kubectl delete deployment tikv

echo "close tidb"
kubectl delete deployment tidb
kubectl delete service tidb

echo "closed and cleared tidb cluster "
