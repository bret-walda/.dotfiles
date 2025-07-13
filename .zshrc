# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
#simple info display in terminal
fastfetch
#vim like functionality in terminal
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bret/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' menu select
compinit
# End of lines added by compinstall
#
#
autoload -Uz promptinit
promptinit
#End of the lines added by promptinstall

#sets the current prompt
#
prompt redhat
#
#Makes the dirs and files a bit colourful.
alias ls='ls --color=auto'
alias eza='eza --colour=always --icons=always --no-time --grid'
alias nv='nvim'
alias tlmgr='/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode'
alias d='dwmswallow $WINDOWID;'
alias chez='/usr/bin/scheme'
alias demacs='emacs --init-directory=.config/emacs'

alias nvim-clean="NVIM_APPNAME=clvim nvim"
alias nvim-chad="NVIM_APPNAME=cvim nvim"

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

function nvims() {
  items=("default" "clvim" "cvim")
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=$config nvim $@
}

export PATH=$PATH:~/path
export PATH=$PATH:~/.cargo/bin/
export PATH=$PATH:~/.local/share/gem/ruby/3.0.0/bin/
export PATH=$PATH:~/.config/emacs/bin
export PATH=$PATH:~/.cache/rebar3/bin
export PATH=$PATH:~/kertinstall/bin
export PATH=$PATH:/usr/local/Gambit/bin
export JAVA_HOME=/usr/lib/jvm/java-22-openjdk
export PATH=$JAVA_HOME/bin:$PATH

export KERT_SHELL=/bin/sh
export KERT_LIBDIR=/home/bret/kertinstall/share/kertex

export PLAN9=/home/bret/plan9/plan9port

[ -f "/home/bret/.ghcup/env" ] && . "/home/bret/.ghcup/env" # ghcup-env




# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/home/bret/.opam/opam-init/init.zsh' ]] || source '/home/bret/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
