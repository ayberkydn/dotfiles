#--> install programs
sudo apt install -y alacritty
sudo apt install -y fish
sudo apt install -y neovim
sudo apt install -y tmux
sudo apt install -y urlview
sudo apt install -y gnome-keyring
sudo apt install -y tldr
sudo apt install -y python3-pip
sudo apt install -y git
sudo apt install -y g++
sudo apt install -y cmake
sudo apt install -y htop
sudo apt install -y npm
sudo apt install -y python3-pynvim

echo "Nvidia docker install et.. Config et.."

#--> shell 
curl -L https://get.oh-my.fish | fish
fish -c "omf install bobthefish"
fish -c "omf install https://github.com/jhillyerd/plugin-git"
fish -C "omf theme bobthefish"

#--> docker config
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service


#--> vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
