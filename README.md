# Helm sample project Voting Application

Add bitnami repository

```sh
helm repo add bitnami https://charts.bitnami.com/bitnami
```

Install postgresql

```sh
helm install my-postgresql bitnami/postgresql --version 14.0.5
```

Install redis

```sh
helm install my-redis bitnami/redis --version 18.13.0
```

Install dependencies in the Chart

```sh
helm dependency build
```

Create namespace

```sh
kubectl create ns labotatorio
```

Install chart

```sh
helm install votingapp ./votingapp -n labotatorio
```
