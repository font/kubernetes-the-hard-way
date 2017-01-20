#!/usr/bin/bash
set -x

kubectl create -f https://raw.githubusercontent.com/font/kubernetes-the-hard-way/1.5.1/services/kubedns.yaml

kubectl --namespace=kube-system get svc

kubectl create -f https://raw.githubusercontent.com/font/kubernetes-the-hard-way/1.5.1/deployments/kubedns.yaml

kubectl --namespace=kube-system get pods
