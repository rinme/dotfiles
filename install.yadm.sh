#!/bin/bash

# while-menu: a menu-driven system information program

DELAY=3 # Number of seconds to display results

while true; do
  clear
  cat << _EOF_
Please Select:

1. Arch Linux (btw)
2. Ubuntu/Debian (Config only for now)
3. Others Unix alike (Config only)
0. Quit

_EOF_

  read -p "Enter selection [0-3] > "

  if [[ $REPLY =~ ^[0-3]$ ]]; then
    case $REPLY in
      1)
        echo "Archlinux installation"
        sudo pacman -Sy fcitx5 fish i3-wm i3blocks i3lock i3status ibus neovim rofi
        sudo pacman -Sy yadm
        sleep $DELAY
        yadm init
        echo "Done!"
        continue
        ;;
      2)
        echo "Ubuntu/Debian installation"
        sudo apt-get update
        sudo apt-get install yadm
        sleep $DELAY
        yadm init
        echo "Done!"
        continue
        ;;
      3)
        sudo curl -fLo /usr/local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm
        sudo chmod a+x /usr/local/bin/yadm
        sleep $DELAY
        echo "Done!"
        continue
        ;;
      0)
        break
        ;;
    esac
  else
    echo "Invalid entry."
    sleep $DELAY
  fi
done
echo "Program terminated."
