# aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dots='dotfiles commit -am"upd" && dotfiles push'
alias nvs='nvidia-smi'

alias shconfig='nvim ~/.config/fish/config.fish'
alias xconfig='nvim ~/.xprofile'
alias vimconfig='vim ~/.vimrc'
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

#conda initialize >>>
eval /home/ayb/.local/conda/bin/conda "shell.fish" "hook" $argv | source


set fish_greeting
