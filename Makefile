LFLAGS = --extra-vars "ev_os=$(OS)"

run:
	ansible-playbook $(LFLAGS) -i ansible/hosts ansible/$(OS).yml

linux: LFLAGS += --ask-become-pass
linux: OS = manjaro
linux: run

macos: OS = macos
macos: run
