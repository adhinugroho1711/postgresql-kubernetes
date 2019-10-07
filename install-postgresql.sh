kubectl create -f postgre-pvc.yaml
helm install --name postgresql --namespace postgresql -f values-production.yaml --set postgresqlPassword=jateng001 --set replication.password=jateng001 --set postgresqlDatabase=master stable/postgresql
