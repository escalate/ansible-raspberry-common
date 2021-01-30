export PY_COLORS=1

.PHONY: test
test:
	molecule test

.PHONY: destroy
destroy:
	molecule destroy

.PHONY: lint
lint:
	molecule lint

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
