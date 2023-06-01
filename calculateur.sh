#!/bin/bash

apps=("firefox", "gummi", "anjuta", "libreoffice", "gcc", "g++", "python", "git", "vim", "apache2", "netcat", "mysql-server", "virtualbox", "wireshark","default-jdk")

for app in "${apps[@]}"; do
	sudo apt install $app
done
