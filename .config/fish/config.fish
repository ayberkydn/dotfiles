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
alias muxconfig='nvim ~/.config/tmuxinator'

alias cl='clear'
alias open='xdg-open'
alias ca='conda activate'
alias cda='conda deactivate'

alias vimm='/usr/bin/vim'
alias vim='nvim'
alias mux='tmuxinator'


#abbreviations
abbr gh  https://github.com/
abbr gha https://github.com/ayberkydn

#conda initialize >>>
eval /home/ayb/.local/conda/bin/conda "shell.fish" "hook" $argv | source


#remove greeting
set fish_greeting

#default is vi bindings
fish_vi_key_bindings


function fish_user_key_bindings
    bind -M insert jk 'set fish_bind_mode default; commandline -f repaint'
    bind -M insert kj 'set fish_bind_mode default; commandline -f repaint'
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
end

#avoid esc in insert mode

##accept autosuggest with ctrl-f
#bind \cf accept-autosuggestion

#disable right prompt
function fish_right_prompt; end


