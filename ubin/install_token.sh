#!/bin/bash
sudo pacman -Syu

list=(
	pcsc-tools
	)

sudo pacman -S --needed --noconfirm ${list[@]}

yaylist=(
	opensc
	sac-core-legacy
)

yay -S --needed --noconfirm ${yaylist[@]}


# echo "module:/usb/lib/pkcs11/libeToken.so" > /etc/pkcs11/modules/libeToken.so 
# module:/usr/lib/pkcs11/libeToken.so
