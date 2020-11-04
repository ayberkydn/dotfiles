# aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dots='dotfiles commit -am"upd" && dotfiles push'
alias nvs='nvidia-smi'

alias shconfig='nvim ~/.config/fish/config.fish'
alias xconfig='nvim ~/.xprofile'
alias vimconfig='vim ~/.vimrc'
alias tmuxconfig='nvim ~/.tmux.conf'
alias vconfig='nvim ~/.config/nvim/*.vim'
alias cocconfig='nvim ~/.config/nvim/coc-settings.json'
alias tconfig='nvim ~/.config/alacritty/alacritty.yml'
alias rconfig='nvim ~/.config/ranger/rc.conf'
alias muxconfig='nvim ~/.config/tmuxinator'

alias cl='clear'
alias open='xdg-open'
alias ca='conda activate'
alias cda='conda deactivate'

abbr --add v nvim
alias x='tmuxinator'


#abbreviations
abbr -a gh  https://github.com/
abbr -a gha https://github.com/ayberkydn

#conda initialize >>>
eval /home/ayb/.local/conda/bin/conda "shell.fish" "hook" $argv | source


#remove greeting
set fish_greeting

#default is vi bindings
#fish_vi_key_bindings
fish_default_key_bindings

function fish_user_key_bindings
    ##avoid esc in insert mode
    bind -M insert jk 'set fish_bind_mode default; commandline -f repaint'
    bind -M insert kj 'set fish_bind_mode default; commandline -f repaint'

    ##c-f is forward movement (so it also accepts autosuggest)
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
end


#disable right prompt
function fish_right_prompt; end


#variables
set DATA_PATH /home/ayb/Documents/data

