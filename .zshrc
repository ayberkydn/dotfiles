
if [ ! -f ~/.antigen.zsh ]; then
    curl -L git.io/antigen > ~/.antigen.zsh
fi


source $HOME/.antigen.zsh 

antigen use oh-my-zsh
antigen theme bira
antigen bundle command-not-found
antigen bundle zsh-abbr
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

EDITOR=nvim

alias shconfig='nvim ~/.zshrc'
alias sshconfig='nvim ~/.ssh/config'
alias tmuxconfig='nvim ~/.tmux.conf'
alias vconfig='nvim ~/.config/nvim/init.lua ~/.config/nvim/lua/*.lua'
alias nixconfig='nvim ~/.config/nix/default.nix'
alias nixx='sudo nixos-rebuild -I nixos-config=/home/ayb/.config/nix/ test'
alias nixxx='sudo nixos-rebuild -I nixos-config=/home/ayb/.config/nix/ switch'

alias vim='nvim'
alias vimm='vim'

alias tconfig='nvim ~/.config/alacritty/alacritty.toml'
alias rconfig='nvim ~/.config/ranger/rc.conf'

alias cl='clear'
#alias open='xdg-open'

alias vpndown="openvpn3 session-manage --disconnect --config ~/.config/vpn/client.ovpn"
alias vpnup="openvpn3 session-start --config ~/.config/vpn/client.ovpn"


#thefuck
eval $(thefuck --alias)


CONDA_PATH='/home/ayb/miniconda3'
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('${CONDA_PATH}/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "${CONDA_PATH}/etc/profile.d/conda.sh" ]; then
        . "${CONDA_PATH}/etc/profile.d/conda.sh"
    else
        export PATH="${CONDA_PATH}/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
 
 
# -- rust --
# affix colons on either side of $PATH to simplify matching
case ":${PATH}:" in
    *:"$HOME/.cargo/bin":*)
        ;;
    *)
        # Prepending path in case a system-installed rustc needs to be overridden
        export PATH="$HOME/.cargo/bin:$PATH"
        ;;
esac


PATH="/Users/ayb/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/ayb/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/ayb/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/ayb/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/ayb/perl5"; export PERL_MM_OPT;

  

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ayb/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ayb/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ayb/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ayb/google-cloud-sdk/completion.zsh.inc'; fi
