all:

.PHONY: test
test:
	ansible-playbook tests/test.yml -i tests/inventory --syntax-check
	sudo ansible-playbook tests/test_create.yml -i tests/inventory -vv
