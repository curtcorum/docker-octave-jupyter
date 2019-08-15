.PHONY: all build help up down

all: help

help: ## print make target help
	@grep -E '^[@a-zA-Z_-]+:.*?## .*$$|^# \*' Makefile \
	| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

######## docker-compose helpers
up: ## bring up the environment
	docker-compose up

down: ## bring down the environment
	docker-compose down

build: ## build the dockerised octave and jupyter environment
	docker-compose build
