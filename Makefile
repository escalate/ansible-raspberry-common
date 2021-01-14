.PHONY: test
test:
	molecule test

.PHONY: lint
lint:
	yamllint --strict -c .yamllint .
	ansible-lint -x 106 .
	flake8
