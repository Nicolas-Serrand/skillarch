#!/bin/bash

if pgrep -f "nwg-dock-hyprland" > /dev/null
then
    pkill -f "nwg-dock-hyprland"
    touch "$HOME/.config/ml4w/settings/dock-disabled"
    echo "Dock disabled"
else
    rm "$HOME/.config/ml4w/settings/dock-disabled"
    source "$HOME/.config/nwg-dock-hyprland/launch.sh"
    echo "Dock enabled"
fi