#--> install programs
sudo apt install -y openssh-server \
                    fish \
                    neovim \
                    tmux \
                    urlview \
                    gnome-keyring \
                    tldr \
                    python3-pip \
                    g++ \
                    cmake \
                    htop \
                    npm \
                    python3-pynvim \


distribution=$(. /etc/os-release;echo $ID$VERSION_ID) 
distribution='ubuntu20.04'
echo $distribution

sudo apt install -y docker docker-compose

curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - 
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

#--> docker config
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service


sudo apt update

sudo apt install -y nvidia-docker2
