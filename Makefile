

.PHONY: seed
seed: # seeds the database 
	@echo "===> $@"
	@cat ./sql/*.sql | sqlite3 sql/sagas.db
