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
