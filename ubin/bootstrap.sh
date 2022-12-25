#!/bin/bash
sudo pacman -Syu

list=(
	micro
	fish
	chezmoi
	xsel 
	fzf
	bspwm
	sxhkd
	rofi
	polybar
	kitty
	wmname
	libinput
	xorg-xinput
	z
	openssh
	)

sudo pacman -S --needed --noconfirm ${list[@]}
sudo chsh -s /usr/bin/fish $USER
