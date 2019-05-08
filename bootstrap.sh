#!/usr/bin/env bash

set -e

pacman -Syyu --noconfirm
pacman -S --noconfirm ansible

ansible-playbook -i ansible/hosts ansible/workstation.yml
