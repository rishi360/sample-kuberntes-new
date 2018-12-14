#!/bin/sh
if [ -z "$DOCKER_ACCOUNT" ]; then
    DOCKER_ACCOUNT=rishabh050189
fi;
sudo docker build --tag=microservice-kubernetes-demo-apache apache
sudo docker tag microservice-kubernetes-demo-apache $DOCKER_ACCOUNT/microservice-kubernetes-demo-apache:latest
sudo docker push $DOCKER_ACCOUNT/microservice-kubernetes-demo-apache

sudo docker build --tag=microservice-kubernetes-demo-catalog microservice-kubernetes-demo-catalog
sudo docker tag microservice-kubernetes-demo-catalog $DOCKER_ACCOUNT/microservice-kubernetes-demo-catalog:latest
sudo docker push $DOCKER_ACCOUNT/microservice-kubernetes-demo-catalog

sudo docker build --tag=microservice-kubernetes-demo-customer microservice-kubernetes-demo-customer
sudo docker tag microservice-kubernetes-demo-customer $DOCKER_ACCOUNT/microservice-kubernetes-demo-customer:latest
sudo docker push $DOCKER_ACCOUNT/microservice-kubernetes-demo-customer

sudo docker build --tag=microservice-kubernetes-demo-order microservice-kubernetes-demo-order
sudo docker tag microservice-kubernetes-demo-order $DOCKER_ACCOUNT/microservice-kubernetes-demo-order:latest
sudo docker push $DOCKER_ACCOUNT/microservice-kubernetes-demo-order

sudo docker build --tag=microservice-kubernetes-demo-hystrix-dashboard microservice-kubernetes-demo-hystrix-dashboard
sudo docker tag microservice-kubernetes-demo-hystrix-dashboard $DOCKER_ACCOUNT/microservice-kubernetes-demo-hystrix-dashboard:latest
sudo docker push $DOCKER_ACCOUNT/microservice-kubernetes-demo-hystrix-dashboard

