if [[ -n $PS1 ]]; then
  export TERM='gnome-256color'
  HISTCONTROL=ignoredups:ignorespace
  HISTSIZE=1000
  HISTFILESIZE=2000
  shopt -s histappend
  shopt -s checkwinsize
  [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

  if [ -x /usr/bin/dircolors ]; then
      test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
      alias ls='ls --color=auto'
      alias grep='grep --color=auto'
  fi

  if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
      . /etc/bash_completion
  fi

  PS1='\[\e[38;5;97m\]\w $(rvm-prompt) $(__git_ps1 *%s)\n\[\e[0;32m\]\$\[\e[0m\] '
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -f "$rvm_path/scripts/completion" ]] && source "$rvm_path/scripts/completion"
