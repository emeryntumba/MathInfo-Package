#!/bin/bash

apps=("firefox", "gummi", "anjuta", "libreoffice")

for app in "${apps[@]}"; do
	sudo apt install $app
done
