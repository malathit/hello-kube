create-db-service: init-config
	kubectl create configmap maria-init-config --from-file=db/scripts
	kubectl apply -f db/db.yaml
delete-db-service: delete-config
	kubectl delete configmap maria-init-config
	kubectl delete -f db/db.yaml
init-config:
	kubectl apply -f config.yaml
delete-config:
	kubectl delete -f config.yaml
create-frontend:
	kubectl apply -f api/app.yaml
delete-frontend:
	kubectl delete -f api/app.yaml
start: init-config create-db-service create-frontend
stop: delete-config delete-db-service delete-frontend
