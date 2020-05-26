.PHONY: build run stop clean

build:
	docker-compose build --no-cache

run:
	docker-compose up -d && docker exec -it $(docker ps -aqf "name=dbt-sandbox_dbt") bash

stop:
	docker-compose stop

clean:
	docker-compose down --remove-orphans --rmi all
