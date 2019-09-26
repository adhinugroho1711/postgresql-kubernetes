# postgresql-kubernetes

## Important step to install
```
makesure to create 1 master and 2 worker on kubernetes
```

## check cluster
```
kubectl run postgresql-client --rm --tty -i --image bitnami/postgresql --env="PGPASSWORD=jateng001" --command -- psql --host my-release-postgresql -U postgres

master=# SELECT client_addr, state FROM pg_stat_replication;
 client_addr |   state   
-------------+-----------
 10.244.1.4  | streaming
(1 row)
```
## increase horizontal scaling
```
kubectl scale statefulset postgresql-slave --replicas=3
```

## Source

* [Bitnami](https://engineering.bitnami.com/articles/create-a-production-ready-postgresql-cluster-bitnami-kubernetes-and-helm.html) - Production-Ready PostgreSQL Cluster
