source $HOME/.antigen.zsh 

antigen use oh-my-zsh
antigen theme bira
antigen bundle command-not-found
antigen bundle git
antigen bundle docker
antigen bundle olets/zsh-abbr
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

# aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dots='dotfiles commit -am"upd"; dotfiles push'

alias shconfig='nvim ~/.zshrc'
alias tmuxconfig='nvim ~/.tmux.conf'
alias vconfig='nvim ~/.config/nvim/*.vim'
alias tconfig='nvim ~/.config/alacritty/alacritty.yml'
alias rconfig='nvim ~/.config/ranger/rc.conf'

alias cddocker="cd ~/.dockerfiles/"
alias cdtmuxinator='cd ~/.config/tmuxinator'

alias cl='clear'
alias open='xdg-open'

alias vpndown="openvpn3 session-manage --disconnect --config ~/.config/vpn/client.ovpn"
alias vpnup="openvpn3 session-start --config ~/.config/vpn/client.ovpn"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ayb/.local/conda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ayb/.local/conda/etc/profile.d/conda.sh" ]; then
        . "/home/ayb/.local/conda/etc/profile.d/conda.sh"
    else
        export PATH="/home/ayb/.local/conda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

