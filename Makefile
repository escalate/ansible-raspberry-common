SHELL = /bin/bash -eo pipefail
ANSIBLE_ARGS ?= $(ANSIBLE_OPTIONS)

ifdef ANSIBLE_TAGS
ANSIBLE_ARGS := $(ANSIBLE_ARGS) --tags='$(ANSIBLE_TAGS)'
endif

export PY_COLORS=1
export ANSIBLE_FORCE_COLOR=1

.PHONY: test
test:
	molecule test

.PHONY: debug
debug:
	molecule --debug test --destroy never

.PHONY: lint
lint:
	molecule lint

.PHONY: converge
converge:
	molecule converge -- $(ANSIBLE_ARGS)

.PHONY: verify
verify:
	molecule verify

.PHONY: destroy
destroy:
	molecule destroy

.PHONY: collections
collections:
	rm --recursive --force ~/.ansible/collections/
	ansible-galaxy collection install \
		--requirements-file="./meta/collection_requirements.yml"

.PHONY: requirements
requirements: collections

.PHONY: version
version:
	ansible --version
	molecule --version
	yamllint --version
	ansible-lint --version
	flake8 --version
