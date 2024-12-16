#!/bin/bash
slurp -d -b "#00000000" -c "#F4C6D1FF" -s "#00000044" -f "hyprctl keyword windowrule unset, slurpwezterm
hyprctl keyword windowrule noanim, slurpwezterm
hyprctl keyword windowrule move %x %y, slurpwezterm
hyprctl keyword windowrule float, slurpwezterm
hyprctl keyword windowrule size %w %h, slurpwezterm
kitty --config ~/.config/kitty/kitty.conf --class slurpwezterm btop" | bash
