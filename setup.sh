#!/bin/bash
export MINIKUBE_HOME=/goinfre/abenouda
minikube delete
minikube config set memory 4000
minikube config set cpus 4
minikube start --driver virtualbox
eval $(minikube -p minikube docker-env)
minikube addons enable metallb
minikube addons enable metrics-server

#Metallb
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

#Services
docker build -f ./srcs/nginx/Dockerfile -t nginx_img .
docker build -f ./srcs/mysql/Dockerfile -t mysql_img .
docker build -f ./srcs/phpmyadmin/Dockerfile -t phpmyadmin_img .
docker build -f ./srcs/wordpress/Dockerfile -t wordpress_img .
docker build -f ./srcs/influxdb/Dockerfile -t influxdb_img .
docker build -f ./srcs/grafana/Dockerfile -t grafana_img .
docker build -f ./srcs/ftps/Dockerfile -t ftps_img .

kubectl apply -f ./srcs/nginx/metallb.yaml
kubectl create -f ./srcs/nginx/nginx.yaml
kubectl create -f ./srcs/mysql/mysql.yaml
kubectl create -f ./srcs/phpmyadmin/phpmyadmin.yaml
kubectl create -f ./srcs/wordpress/wordpress.yaml
kubectl create -f ./srcs/influxdb/influxdb.yaml
kubectl create -f ./srcs/grafana/grafana.yaml
kubectl create -f ./srcs/ftps/ftps.yaml