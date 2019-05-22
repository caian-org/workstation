DEFAULT_TARGET := apply

apply:
	ansible-playbook --ask-become-pass -i ansible/hosts ansible/workstation.yml
