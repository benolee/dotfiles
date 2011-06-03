PS1='\[\033[0;30m\]\w $(__git_branch) $(rvm-prompt)\n\[\033[0;32m\]\$\[\033[0m\] '

function __git_branch {
  __git_ps1 "*%s"
}

HISTCONTROL=ignoredups:ignorespace
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_profile ]; then
    . ~/.bash_profile
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# update PATH to include binaries
PATH=$HOME/local/node/bin:$PATH
PATH=$HOME/local/ghc/bin:$PATH
PATH=$HOME/local/haskell-platform/bin:$HOME/.cabal/bin:$PATH

# set TERM to xterm-256
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi

