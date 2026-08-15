.PHONY: lint lint-links lint-awesome

LYCHEE_IMAGE := lycheeverse/lychee:0.23.0
NODE_IMAGE := node:24.17.0-bookworm
LYCHEE_ARGS := --no-progress --timeout 120 --max-retries 3 --accept 100..=399,403,429 README.md
DOCKER_RUN := docker run --rm -v $(CURDIR):/workspace -w /workspace

lint: lint-links lint-awesome

lint-links:
	$(DOCKER_RUN) $(LYCHEE_IMAGE) $(LYCHEE_ARGS)

lint-awesome:
	$(DOCKER_RUN) $(NODE_IMAGE) sh -lc 'tmp=$$(mktemp -d) && cp -a /workspace/. "$$tmp" && cd "$$tmp" && git config --global --add safe.directory "$$tmp" && repo_url=$$(git remote get-url origin); repo_url=$${repo_url#git@github.com:}; repo_url=$${repo_url%.git}; git remote set-url origin "https://github.com/$${repo_url}" && git config branch.$$(git branch --show-current).remote origin && npx --yes awesome-lint@2.3.0'
