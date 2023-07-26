#essential
brew install neovim
brew install tldr
brew install tmux
brew install alacritty
brew install neovim
brew install git
brew install gh
brew install node
brew install thefuck
brew install youtube-dl
brew install wget
brew install mas #mac app store
#sketchybar
brew tap FelixKratz/formulae
brew install sketchybar
brew services start sketchybar
#cask
brew install --cask raycast 
brew install --cask alt-tab 
brew install --cask transmission 
brew install --cask visual-studio-code
brew install --cask docker
brew install --cask karabiner-elements
brew install --cask google-chrome
brew install --cask spotify
brew install --cask todoist
brew install --cask github
brew install --cask bettertouchtool
brew install --cask rectangle-pro
brew install --cask shottr
brew install --cask MonitorControl
brew install --cask microsoft-teams
#fonts
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

#mac app store
mas install 1435957248 #drafts
mas install 93798470 #amphetamine

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
sh ~/.tmux/plugins/tpm/scripts/install_plugins.sh

#btt ayarlari
#rectangle pro ayarlari
#
#
#iterm2 ayarlari
#iTerm2 animation disable
defaults write com.googlecode.iterm2 HotkeyTermAnimationDuration -float 0.0001
#iTerm2 hotkeys dropleft dropright
#exclude iTerm2 from alttab and dock
#
#VSCode key repeat 
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

#Raycast ayarlari
#
