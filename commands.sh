#!/bin/bash

# create project
helm create votingapp

# add bitnami repository
helm repo add bitnami https://charts.bitnami.com/bitnami

# install postgresql
helm install my-postgresql bitnami/postgresql --version 14.0.5

# install redis
helm install my-redis bitnami/redis --version 18.13.0

# install dependencies
helm dependency build

# create namespace 
kubectl create ns labotatorio

# install chart
helm install votingapp ./votingapp -n labotatorio
