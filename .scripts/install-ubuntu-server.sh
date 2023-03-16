#--> install programs
sudo apt install -y openssh-server        \
                    zsh                   \
                    tmux                  \
                    urlview               \
                    gnome-keyring         \
                    tldr                  \
                    python3-pip           \
                    g++                   \
                    cmake                 \
                    htop                  \
                    npm                   \
                    python3-pynvim        \
                    openvpn               \
                    curl                  \
		    yadm                  \
		    thefuck

# neovim
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt update -y
sudo apt install -y neovim

# Tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sh ~/.tmux/plugins/tpm/scripts/install_plugins.sh

# Dotfiles
yadm clone https://github.com/ayberkydn/dotfiles

#--> docker
sudo apt install -y docker
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service

#nvidia docker
distribution=$(. /etc/os-release;echo $ID$VERSION_ID) 
echo $distribution
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - 
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt update
sudo apt install -y nvidia-docker2


#chsh -s zsh
