.PHONY: init install

PORT ?= 8080
container_cmd = docker compose run -it --rm -p${PORT}:8080 server

init:
	${container_cmd} npm init $(ARGS)
install:
	${container_cmd} npm install $(ARGS)
npm:
	${container_cmd} npm $(ARGS)
