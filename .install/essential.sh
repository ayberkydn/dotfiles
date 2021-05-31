#--> install programs
sudo apt install -y openssh-server        \
                    zsh                   \
                    neovim                \
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


#--> install language servers
sudo npm install -g vim-language-server                 \
                    bash-language-server                \
                    yaml-language-server                \
                    dockerfile-language-server-nodejs   \
                    vscode-json-languageserver

sudo apt-get install clangd-9

distribution=$(. /etc/os-release;echo $ID$VERSION_ID) 
echo $distribution

sudo apt install -y docker

curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - 
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

#--> docker config
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service

# docker-compose dependencies according to 
# https://docs.docker.com/compose/install/
####sudo apt install py-pip python3-dev libffi-dev openssl-dev gcc libc-dev rust cargo make -y

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


sudo apt update

sudo apt install -y nvidia-docker2
