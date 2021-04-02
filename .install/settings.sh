
# dotfiles
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/ayberkydn/dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles
git clone --bare https://www.github.com/ayberkydn/dotfiles.git $HOME/.dotfiles.git 

# Tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


#--> shell 
curl -L https://get.oh-my.fish | fish
fish -c "omf install bobthefish"
fish -c "omf install https://github.com/jhillyerd/plugin-git"
fish -C "omf theme bobthefish"

# Vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# git
git config --global user.email "ayberkydn@gmail.com" 
git config --global user.name "Ayberk Aydin"         


# use cache
git config --global credential.helper cache

#cache timeout
git config --global credential.helper 'cache --timeout=3600'

