#!/bin/bash


install_bin() {
    set -xe
    sudo cp gitrepo-update $1
    exit
}


echo "Select install destination:"
echo "  > 0: '/usr/local/bin/'"
echo "  > 1: '/usr/bin/'"

read -p "> " install_opt

if [[ $install_opt == "0" ]]; then
    install_bin "/usr/local/bin/"
elif [[ $install_opt == "1" ]]; then
    install_bin "/usr/bin/"
fi
