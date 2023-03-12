set fish_greeting " "
if status is-interactive
    neofetch
end

function pacman
    sudo pacman $argv
end

starship init fish | source
