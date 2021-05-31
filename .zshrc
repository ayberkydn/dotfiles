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


# abbr add nvs='nvidia-smi'
# abbr add nvsl='nvidia-smi -lms 100'
# abbr add v='nvim'
# abbr add x='tmuxinator'
# abbr add --force dc='docker-compose'
# abbr add --global gh='https://github.com'
# abbr add --global gha='https://github.com/ayberkydn'
#
SPACESHIP_PROMPT_ORDER=(
  # time        # Time stamps section (Disabled)
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  # docker      # Docker section (Disabled)
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode     # Vi-mode indicator (Disabled)
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
