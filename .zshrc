
if [ ! -f ~/.antigen.zsh ]; then
    curl -L git.io/antigen > ~/.antigen.zsh
fi


source $HOME/.antigen.zsh 

antigen use oh-my-zsh
antigen theme bira
antigen bundle command-not-found
antigen bundle zsh-abbr
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

EDITOR=nvim

alias shconfig='nvim ~/.zshrc'
alias sshconfig='nvim ~/.ssh/config'
alias tmuxconfig='nvim ~/.tmux.conf'
alias vconfig='nvim ~/.config/nvim/init.lua ~/.config/nvim/lua/*.lua'
alias hyprconfig='nvim ~/.config/hypr/myconfig.conf'
alias kittyconfig='nvim ~/.config/kitty/kitty.conf'
alias barconfig='nvim ~/.config/waybar/config.jsonc ~/.config/waybar/style.css'
alias nixconfig='nvim ~/.config/nix/default.nix ~/.config/home-manager/home.nix'
alias nixx='sudo nixos-rebuild -I nixos-config=/home/ayb/.config/nix/ test'
alias nixxx='sudo nixos-rebuild -I nixos-config=/home/ayb/.config/nix/ switch'

alias vim='nvim'
alias vimm='vim'

alias tconfig='nvim ~/.config/alacritty/alacritty.toml'
alias wconfig='nvim ~/.wezterm.lua'
alias rconfig='nvim ~/.config/ranger/rc.conf'

alias cl='clear'
#alias open='xdg-open'


