source $HOME/.antigen.zsh 

antigen use oh-my-zsh
antigen theme agnoster
antigen bundle command-not-found
antigen bundle git
antigen bundle docker



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






# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/ayb/.local/conda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
   #eval "$__conda_setup"
else
   #if [ -f "/home/ayb/.local/conda/etc/profile.d/conda.sh" ]; then
       #. "/home/ayb/.local/conda/etc/profile.d/conda.sh"
   #else
       #export PATH="/home/ayb/.local/conda/bin:$PATH"
   #fi
fi
unset __conda_setup
# <<< conda initialize <<<
#
#
antigen apply

