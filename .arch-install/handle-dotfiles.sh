
#### Git config name mail ####
git config --global user.email "ayberkydn@gmail.com" 
git config --global user.name "Ayberk Aydin"         
###################################
#### handle dotfiles ##############
###################################
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/ayberkydn/dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles
git clone --bare https://www.github.com/ayberkydn/dotfiles.git $HOME/.dotfiles.git 

