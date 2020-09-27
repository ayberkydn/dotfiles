# If you come from bash you might have to change your $PATH.
export PATH=.:$PATH

# Datasetlerin path
export DATA_PATH="/home/ayb/Documents/data"

# Path to your oh-my-zsh installation.
export ZSH="/home/ayb/.oh-my-zsh"

ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=90

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
    common-aliases 
    extract
    dnf
    docker
    docker-compose
    )

source $ZSH/oh-my-zsh.sh


if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dots='dotfiles commit -am"upd" && dotfiles push'
alias i3config='nvim ~/.config/i3/config'
alias vimconfig='nvim ~/.vimrc'
alias zshconfig='nvim ~/.zshrc'
alias barconfig='nvim ~/.config/polybar/config'
alias nvimconfig='nvim ~/.config/nvim/init.vim'
alias alacrittyconfig='nvim ~/.config/alacritty/alacritty.yml'
alias open='xdg-open'
alias ca='conda activate'
alias cda='conda deactivate'
alias vim='nvim'

unalias rm #common aliases plugininde rm'i override etmis her zaman onay almak icin

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

