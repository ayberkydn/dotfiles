## > set mirrors
sudo pacman-mirrors -c Germany ;sudo pacman -Syu --noconfirm

## > zsh 
sudo pacman -S zsh yay --noconfirm
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

yay -S base base-devel chromium cmake xclip xsel neovim fzf alacritty tmux tmuxinator ranger ueberzug --noconfirm

