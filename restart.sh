#!/bin/bash
eval $(minikube docker-env)
kubectl delete -f srcs/$1/$1.yaml
eval $(minikube docker-env)
docker build -f srcs/$1/Dockerfile -t $1_img .
kubectl create -f srcs/$1/$1.yaml