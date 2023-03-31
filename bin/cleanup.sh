#!/bin/bash

rm ~/.vimrc

sed -i '/source ~\/.dotfiles\/bashrc_custom/d' ~/.bashrc

rm -R ~/.TRASH


