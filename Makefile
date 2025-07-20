# Indique les fausses cibles
.PHONY: help checkov

# Cible par défaut
.DEFAULT_GOAL = help

help: ## Afficher l'aide
	@echo "Ansible_collections."
	@echo "Utilisation:  make [command]"
	@echo "Commandes disponibles:"
	@awk 'BEGIN {FS = ":.*##"; } /^[a-zA-Z_-]+:.*?##/ { printf "  \033[1;92m%-20s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST) | sort
	@echo

checkov: ## exécuter checkov dans une image docker
	podman run --rm -t -v "${PWD}":/app:Z -w /app docker.io/ysebastia/checkov:3.2.451 checkov --directory . --soft-fail --skip-download --quiet --compact -o gitlab_sast
