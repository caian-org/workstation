DEFAULT_TARGET := run

run:
	ansible-playbook --ask-become-pass -i ansible/hosts ansible/$(os).yml
