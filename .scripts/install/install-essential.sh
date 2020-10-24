## > set mirrors
sudo pacman-mirrors -c Germany ;sudo pacman -Syu --noconfirm

## > sh 
sudo pacman -S fish yay --noconfirm
curl -L https://get.oh-my.fish | fish
fish -c "omf install bobthefish"
fish -C "omf theme bobthefish"


yay -S base base-devel chromium cmake xclip xsel neovim fzf alacritty tmux tmuxinator ranger ueberzug --noconfirm

