#!/bin/bash

apps=("firefox", "gummi", "anjuta")

for app in "${apps[@]}"; do
	sudo apt install $app
done
