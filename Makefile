LFLAGS = --extra-vars "ev_os=$(OS)"

run:
	ansible-playbook $(AP_EXTRA) $(LFLAGS) -i ansible/hosts ansible/$(OS).yml


macos: OS = macos
macos: run
