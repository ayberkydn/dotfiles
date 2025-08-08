fish_add_path /opt/homebrew/bin/

# aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dots='dotfiles commit -am"upd"; dotfiles push'

alias shconfig='nvim ~/.config/fish/config.fish'
alias tmuxconfig='nvim ~/.tmux.conf'
alias vimconfig='nvim ~/.config/nvim/*.vim'
alias tconfig='nvim ~/.config/alacritty/alacritty.yml'

alias cl='clear'
alias open='xdg-open'


#abbreviations
abbr --add oc opencode

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


