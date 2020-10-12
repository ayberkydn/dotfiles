sudo pacman-mirrors -c Germany ;sudo pacman -Syu --noconfirm

sudo pacman -S zsh --noconfirm

##### OHMYZSH ######
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


sudo pacman -S yay base base-devel chromium cmake awesome-terminal-fonts xclip xsel neovim fzf alacritty tmux --noconfirm

