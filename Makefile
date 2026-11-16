# Façade du projet : tout passe par Docker.
NGINX := nginx@sha256:65645c7bb6a0661892a8b03b89d0743208a18dd2f3f17a54ef4b76fb8e2f2a10
TRIVY := aquasec/trivy@sha256:8f6bb947dbc528902e11f2f5be52f7b519f6a39d5d148f41166f2040499768fb
PORT  ?= 8417

.PHONY: help up down logs audit

help: ## Affiche cette aide
	@grep -E '^[a-z-]+:.*##' $(MAKEFILE_LIST) | awk -F':.*## ' '{printf "  %-8s %s\n", $$1, $$2}'

up: ## Sert le site en local sur http://localhost:$(PORT)
	docker run -d --rm --name yantech-www -p $(PORT):80 -v "$(CURDIR)":/usr/share/nginx/html:ro $(NGINX)

down: ## Arrête le serveur local
	docker stop yantech-www

logs: ## Affiche les logs du serveur local
	docker logs -f yantech-www

audit: ## Scan de sécurité du dépôt (secrets, configuration)
	docker run --rm -v "$(CURDIR)":/src:ro $(TRIVY) fs --scanners secret,misconfig --exit-code 1 /src
