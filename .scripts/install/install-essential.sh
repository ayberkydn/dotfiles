
#--> shell 
sudo pacman -S fish --noconfirm
curl -L https://get.oh-my.fish | fish
fish -c "omf install bobthefish"
fish -C "omf theme bobthefish"


#--> set mirrors
sudo pacman-mirrors -c Germany ;sudo pacman -Syu --noconfirm
sudo pacman -S yay --noconfirm

#--> install programs
yay -S alacritty        --noconfirm
yay -S base             --noconfirm
yay -S base-devel       --noconfirm
yay -S bat              --noconfirm
yay -S chromium         --noconfirm
yay -S cmake            --noconfirm
yay -S googler          --noconfirm
yay -S neovim           --noconfirm
yay -S fzf              --noconfirm
yay -S python-pynvim    --noconfirm
yay -S npm              --noconfirm
yay -S ranger           --noconfirm
yay -S tldr             --noconfirm
yay -S tmux             --noconfirm
yay -S tmuxinator       --noconfirm
yay -S translate-shell  --noconfirm
yay -S ueberzug         --noconfirm
yay -S xclip            --noconfirm
yay -S xsel             --noconfirm
yay -S docker           --noconfirm
yay -S nvidia-container-runtime           --noconfirm
yay -S nerd-fonts-inconsolata           --noconfirm
yay -S nerd-fonts-source-code-pro           --noconfirm

sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
