#!/bin/bash
sudo pacman -Syu

list=(
	micro
	fish
	fisher
	chezmoi
	xsel 
	fzf
	bspwm
	sxhkd
	rofi
	polybar
	kitty
	alacritty
	wmname
	libinput
	xorg-xinput
	z
	openssh
	i3status-rust
#	sway
	ttf-font-awesome
	)

sudo pacman -S --needed --noconfirm ${list[@]}

yaylist=(
	rofi-greenclip
	ly
	etcher-bin
	brave-bin
)

yay -S --needed --needed --noconfirm ${yaylist[@]}


