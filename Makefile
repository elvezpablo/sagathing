

.PHONY: seed
seed: # seeds the database 
	@echo "===> $@"
	@cat ./sql/*.sql | sqlite3 sql/db/sagas.db

.PHONY: schema
schema: seed
	@echo "===> $@"
	@cat ./sql/*sql > ./workers/api/schema.sql
