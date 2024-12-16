#!/usr/bin/env sh

term=$(cat $HOME/.config/hypr/keybindings.conf | grep ^'$term' | cut -d '=' -f2)

if command -v "btop" &> /dev/null; then
    $term -e "btop"
fi