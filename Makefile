# Capture additional command-line arguments
ARGS = $(filter-out $@,$(MAKECMDGOALS))

.DEFAULT_GOAL := help

# Handle the `--` separator
ifneq (,$(findstring --,$(MAKECMDGOALS)))
ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
MAKECMDGOALS := $(firstword $(MAKECMDGOALS))
endif

docker-build:
	docker build -t bagisto-postgres -f Dockerfile .

docker-run:
	docker run -d -p 5432:5432 --name bagisto-postgres-container bagisto-postgres

%:
    @:
