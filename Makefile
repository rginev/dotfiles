SHELL := bash

.PHONY: all
all: dotfiles ## Installs the dotfiles.

.PHONY: dotfiles nix
dotfiles: ## Installs the dotfiles.
	# copy dotfiles
	@for file in $(shell find $(CURDIR) -name ".*" -not -name ".vscode" -not -name ".gitignore" -not -name ".git" -not -name ".config" -not -name ".github" -not -name ".*.swp" -not -name ".gnupg"); do \
		f=$$(basename $$file); \
		cp $$file $(HOME)/$$f; \
	done;

nix: ## COnfigures and runs nix-darwin
	@cp nix/etc/nix-darwin/flake.nix /etc/nix-darwin && \
	sudo nix run nix-darwin -- switch --flake /etc/nix-darwin
