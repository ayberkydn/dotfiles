source $HOME/.antigen.zsh 

antigen use oh-my-zsh
antigen theme agnoster
antigen bundle command-not-found
antigen bundle git
antigen bundle docker
antigen bundle olets/zsh-abbr

antigen apply

# aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dots='dotfiles commit -am"upd"; dotfiles push'

alias shconfig='nvim ~/.config/fish/config.fish'
alias xconfig='nvim ~/.xprofile'
alias vimconfig='vim ~/.vimrc'
alias tmuxconfig='nvim ~/.tmux.conf'
alias vconfig='nvim ~/.config/nvim/*.vim'
alias cocconfig='nvim ~/.config/nvim/coc-settings.json'
alias tconfig='nvim ~/.config/alacritty/alacritty.yml'
alias rconfig='nvim ~/.config/ranger/rc.conf'
alias jcconfig="nvim ~/.jupyter/jupyter_console_config.py"

alias cddocker="cd ~/.dockerfiles/"
alias cdtmuxinator='cd ~/.config/tmuxinator'

alias cl='clear'
alias open='xdg-open'

alias vpndown="openvpn3 session-manage --disconnect --config ~/.config/vpn/client.ovpn"
alias vpnup="openvpn3 session-start --config ~/.config/vpn/client.ovpn"


#abbr add nvs='nvidia-smi'
#abbr add nvsl='nvidia-smi -lms 100'
#abbr add v='nvim'
#abbr add x='tmuxinator'
#abbr add dc='docker-compose'
#abbr add --global gh='https://github.com'
#abbr add --global gha='https://github.com/ayberkydn'






