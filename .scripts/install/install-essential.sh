## > set mirrors
sudo pacman-mirrors -c Germany ;sudo pacman -Syu --noconfirm

## > zsh 
sudo pacman -S zsh yay --noconfirm
curl -L git.io/antigen > $HOME/.antigen.zsh

yay -S base base-devel chromium cmake xclip xsel neovim fzf alacritty tmux tmuxinator ranger ueberzug --noconfirm

