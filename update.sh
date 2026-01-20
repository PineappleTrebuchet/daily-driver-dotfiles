#!/bin/bash

rm chrome/* -r
rm config/* -r
rm zsh/* -r

cp ~/.waterfox/'pCOlJDgg.Profile 1'/chrome/* chrome/ -r

cp ~/.config/alacritty config/ -r
cp ~/.config/btop config/ -r
cp ~/.config/cava config/ -r
cp ~/.config/fuzzel config/ -r
cp ~/.config/fastfetch/ config/ -r
cp ~/.config/gtk-3.0 config/ -r
cp ~/.config/gtk-4.0 config/ -r
cp ~/.config/htop config/ -r
cp ~/.config/nvim config/ -r
cp ~/.config/sway config/ -r
cp ~/.config/swaylock config/ -r
cp ~/.config/swaync config/ -r
cp ~/.config/Vencord config/ -r
cp ~/.config/waybar config/ -r
cp ~/.config/wlogout config/ -r

cp ~/.zshrc zsh/ -r
cp ~/.oh-my-zsh/themes/cocos-theme.zsh-theme zsh/ -r
