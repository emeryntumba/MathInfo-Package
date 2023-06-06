#!/bin/bash

#updating apt && installing software-properties-common
sudo apt update
sudo apt install software-properties-common

# Declare a list of software to propose for installation
software_list=(
  "firefox"
  "vim"
  "git"
  "python3"
  "netcat"
  "gummi"
  "anjuta"
  "libreoffice"
  "gcc"
  "g++"
  "vim"
  "apache2"
  "mysql-server"
  "virtualbox"
  "wireshark"
  "default-jdk"
  "notepadqq"
  "koffice" 
  "libreoffice"
  "gnome-documents gnome-calculator gnome-calendar gnome-contacts gnome-characters"
  "gnumeric"
  "libreoffice-calc"
  "subversion" 
  "bind9"
  "default-jre"
  "ufw"
  "iptables -L"
  "ipfilter"
  "doxygen"
  "flex"
  "bison"
  "gcc"
  "anjuta"
  "codeblocks"
  "wxdsgn"

)

# Print a list of the proposed software
echo "The following software is available for installation:"
for app in "${software_list[@]}"; do
  echo "  $app"
done

# Ask the user if they want to install all of the software
read -p "Do you want to install all of the software? (y/n) " response

# If the user says yes, install all of the software
if [[ $response == "y" ]]; then
  for app in "${software_list[@]}"; do
    sudo apt install $app
  done
else
  # If the user says no, let them select the software they want to install
  while true; do
    # Print a list of the software that has not yet been installed
    echo "The following software has not yet been installed:"
    for app in "${software_list[@]}"; do
      if ! dpkg -l | grep -q "^ii $app"; then
        echo "  $app"
      fi
    done

    # Ask the user to select the software they want to install
    read -p "Select the software you want to install (enter a space-separated list): " software

    # Install the selected software
    for app in $software; do
      sudo apt install $app
    done

    # Check if the user wants to install more software
    read -p "Do you want to install more software? (y/n) " response
    if [[ $response != "y" ]]; then
      break
    fi
  done
fi
