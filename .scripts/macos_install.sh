#essential
brew install neovim
brew install tldr
brew install tmux
brew install neovim
brew install git
brew install gh
#sketchybar
brew tap FelixKratz/formulae
brew install sketchybar
brew services start sketchybar
#cask
brew install --cask raycast 
brew install --cask visual-studio-code
brew install --cask karabiner-elements
brew install --cask google-chrome
brew install --cask spotify
brew install --cask todoist
brew install --cask github
brew install --cask bettertouchtool
brew install --cask rectangle-pro
brew install --cask shottr
brew install --cask mission-control-plus
brew install --cask microsoft-teams
#fonts
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sh ~/.tmux/plugins/tpm/scripts/install_plugins.sh

#btt ayarlari
#iterm2 ayarlari
#rectangle pro ayarlari
#
#
#iTerm2 animation disable
defaults write com.googlecode.iterm2 HotkeyTermAnimationDuration -float 0.0001
