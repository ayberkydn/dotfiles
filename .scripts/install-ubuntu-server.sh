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
                    python-is-python3     \
		    yadm                  \
		    thefuck

sudo systemctl enable --now ssh.service

# neovim
# sudo add-apt-repository -y ppa:neovim-ppa/stable
# sudo apt update -y
sudo apt install -y neovim

# Tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# start a server but don't attach to it
tmux start-server
# create a new session but don't attach to it either
tmux new-session -d
# install the plugins
~/.tmux/plugins/tpm/scripts/install_plugins.sh
# killing the server is not required, I guess
tmux kill-server

# Dotfiles
# yadm clone https://github.com/ayberkydn/dotfiles

#--> docker
sudo apt install -y docker.io
# sudo groupadd docker
# sudo usermod -aG docker $USER
# sudo systemctl enable docker.service

#--> nvidia container runtime

# distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
#this works for ubuntu23.04 too
distribution="ubuntu22.04" \
      && curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
      && curl -s -L https://nvidia.github.io/libnvidia-container/$distribution/libnvidia-container.list | \
            sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
            sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

sudo apt update
sudo apt install nvidia-container-toolkit

sudo nvidia-ctk runtime configure --runtime=docker
sudo systemctl restart docker.service

#chsh -s zsh
