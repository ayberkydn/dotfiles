fish_add_path /opt/homebrew/bin/

# aliases
alias shconfig='nvim ~/.config/fish/config.fish'
alias tmuxconfig='nvim ~/.tmux.conf'
alias vimconfig='nvim ~/.config/nvim/*.vim'
alias tconfig='nvim ~/.config/alacritty/alacritty.yml'
alias vim='nvim'



#abbreviations
abbr --add oc opencode
abbr --add ocr opencode run

#remove greeting
set fish_greeting
set -gx EDITOR nvim

#fish_vi_key_bindings
fish_default_key_bindings

#disable right prompt
function fish_right_prompt; end



# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# Added by Antigravity
fish_add_path /Users/ayb/.antigravity/antigravity/bin
