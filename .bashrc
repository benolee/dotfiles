# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
# [ -z "$PS1" ] && return

function __git_branch {
  __git_ps1 "\e[0;32m*%s\e[0m"
}

if [[ -n "$PS1" ]]; then

  # don't put duplicate lines in the history. See bash(1) for more options
  # ... or force ignoredups and ignorespace
  HISTCONTROL=ignoredups:ignorespace

  # append to the history file, don't overwrite it
  shopt -s histappend

  # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
  HISTSIZE=1000
  HISTFILESIZE=2000

  # add the following paths to the cd command
  #CDPATH="~/code"

  # check the window size after each command and, if necessary,
  # update the values of LINES and COLUMNS.
  shopt -s checkwinsize

  # make less more friendly for non-text input files, see lesspipe(1)
  [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

  # set variable identifying the chroot you work in (used in the prompt below)
  if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
      debian_chroot=$(cat /etc/debian_chroot)
  fi

  # set a fancy prompt (non-color, unless we know we "want" color)
  case "$TERM" in
      xterm-color) color_prompt=yes;;
  esac
  
  # uncomment for a colored prompt, if the terminal has the capability; turned
  # off by default to not distract the user: the focus in a terminal window
  # should be on the output of commands, not on the prompt
  force_color_prompt=yes

  if [ -n "$force_color_prompt" ]; then
      if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
      else
    color_prompt=
      fi
  fi

  if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\e[0;34m\]\w \[\e[0;31m\]$(__git_branch) \[\e[0;32m\]$(rvm-prompt)\n\[\e[0;32m\]\$\[\e[0m\] '
  else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
  fi
  unset color_prompt force_color_prompt

  # If this is an xterm set the title to user@host:dir
  case "$TERM" in
  xterm*|rxvt*)
      PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
      ;;
  *)
      ;;
  esac

  # enable color support of ls and also add handy aliases
  if [ -x /usr/bin/dircolors ]; then
      test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
      alias ls='ls --color=auto'
      #alias dir='dir --color=auto'
      #alias vdir='vdir --color=auto'

      alias grep='grep --color=auto'
      alias fgrep='fgrep --color=auto'
      alias egrep='egrep --color=auto'
  fi

  # some more ls aliases
  alias ll='ls -alF'
  alias la='ls -A'
  alias l='ls -CF'
  alias ack='ack-grep'
  alias minecraft='java -Xmx1024M -Xms512M -cp ~/games/minecraft.jar net.minecraft.LauncherFrame'
  alias xcopy='xclip -sel clipboard'
  alias xpaste='xclip -sel clipboard -o'
  alias darkplaces='~/games/quake/darkplaces-linux-686-sdl'
  alias gs='git status'
  alias go='gnome-open'
  alias pru="rvm 1.9.2 exec pru"

  # make copy operation interactive and verbose
  alias cp='cp -iv'
  # make remove operation interactive and verbose
  alias rm='rm -iv'
  # make move operation interactive and verbose
  alias mv='mv -iv'

  # Alias definitions.
  # You may want to put all your additions into a separate file like
  # ~/.bash_aliases, instead of adding them here directly.
  # See /usr/share/doc/bash-doc/examples in the bash-doc package.

  if [ -f ~/.bash_aliases ]; then
      . ~/.bash_aliases
  fi

  # enable programmable completion features (you don't need to enable
  # this, if it's already enabled in /etc/bash.bashrc and /etc/profile
  # sources /etc/bash.bashrc).
  if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
      . /etc/bash_completion
  fi

  # update PATH to include node.js
  PATH=$HOME/local/node/bin:$PATH

  # set TERM to xterm-256
  if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
  else
    export TERM='xterm-color'
  fi

fi

# if the file 'rvm' exists and has a size greater than zero, source the file
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# if the file 'completion' exists and is readable, source the file
[[ -r "$rvm_path/scripts/completion" ]] && source "$rvm_path/scripts/completion"

# if the file '.rvmrc' exists and is readable, source the file
#[[ -r "$PWD/.rvmrc" ]] && . "$PWD/.rvmrc"
