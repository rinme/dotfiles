set fish_greeting " "
if status is-interactive
    neofetch
end

function pacman
    sudo pacman $argv
end

starship init fish | source

# Created by `pipx` on 2023-03-12 08:54:33
set PATH $PATH /home/rinme/.local/bin
