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
                    neovim
                    docker.io
		    thefuck

sudo systemctl enable --now ssh.service


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

#--> Dotfiles
# yadm clone https://github.com/ayberkydn/dotfiles

#--> docker permissions if necessary
# sudo groupadd docker
# sudo usermod -aG docker $USER
# sudo systemctl enable docker.service

#--> nvidia container runtime
#--> change shell

