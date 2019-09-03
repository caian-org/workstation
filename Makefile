DEFAULT_TARGET := run

run:
	ansible-playbook --ask-become-pass --extra-vars "ev_os=$(os)" -i ansible/hosts ansible/$(os).yml
