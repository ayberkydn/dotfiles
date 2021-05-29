source $HOME/.antigen.zsh 

antigen use oh-my-zsh
antigen theme agnoster
antigen bundle command-not-found
antigen bundle git
antigen bundle docker
antigen bundle olets/zsh-abbr


# aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dots='dotfiles commit -am"upd" && dotfiles push'
alias nvs='nvidia-smi'

alias shconfig='nvim ~/.zshrc'
alias xconfig='nvim ~/.xprofile'
#alias iconfig='nvim ~/.config/i3/config'
#alias bconfig='nvim ~/.config/polybar/config'
alias vconfig='vim ~/.vimrc'
alias tmuxconfig='nvim ~/.tmux.conf'
alias nvimconfig='nvim ~/.config/nvim/*.{vim,json}'
alias tconfig='nvim ~/.config/alacritty/alacritty.yml'
alias rconfig='nvim ~/.config/ranger/rc.conf'


alias cl='clear'
alias open='xdg-open'
alias ca='conda activate'
alias cda='conda deactivate'


alias vimm='/usr/bin/vim'
alias vim='nvim'
alias mux='tmuxinator'








antigen apply

