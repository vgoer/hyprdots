#!/usr/bin/env sh

term=$(cat $HOME/.config/hypr/keybindings.conf | grep ^'$term' | cut -d '=' -f2)


rand=$((RANDOM % 10))

com="pipes.sh -t $rand"
if command -v $com &> /dev/null; then
    $term -e $com
fi