# ~/.zshrc – inspired from ~/.bashrc

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
export HISTCONTROL=ignoreboth
export HISTSIZE=1000
export HISTFILESIZE=2000

# append to the history file, don't overwrite it
setopt append_history

# check the window size after each command and update LINES/COLUMNS
setopt checkwinsize

# history management (zsh)
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt share_history

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
autoload -U compinit
compinit

# make zsh more friendly for non‑text input files (like lesspipe)
# [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# check if we want a colored prompt (same as in bash)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=
    fi
fi

# -- prompt for ZSH (same ANSI codes as bash) ---
#
# Important: in zsh `$'…'` or `$(print -P …)` is often used,
# but you can keep raw ANSI escapes in PROMPT as long as they are bracketed with `%{…%}`.
if [ "$color_prompt" = yes ]; then
    # curly quotes 紫  =>  🟣
    # pink heart  =>  💜
    PROMPT=$'%{\e[01;35m%}[%t] %n@%m 🟣%{\e[00m%}
%{\e[01;35m%}%~%{\e[00m%}
%{\e[01;35m%}\n💜 >%{\e[00m%} '
else
    PROMPT='%n@%m:%~%# '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title
case "$TERM" in
xterm*|rxvt*)
    PROMPT=$'\e]0;${debian_chroot:+($debian_chroot)}%n@%m: %~\a'"$PROMPT"
    ;;
*)
    ;;
esac

# enable color support of ls and add handy aliases
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
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# ALIASES – same as in bash, fully compatible in zsh
alias l='ls -ltr'
alias c='clear'
alias cc='cd ..'
alias snapu='sudo snap refresh'
alias maj='sudo snap refresh && sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean'
alias maj-lang='sudo pip list --outdated && sudo npm update -g && code --list-extensions | xargs -L 1 code --install-extension --force'
alias maj-pentest='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt autoclean && pip3 list --user --outdated | awk "NR>2 {print \$1}" | xargs -n1 pip3 install --user -U'
alias maj-ult='maj && maj-lang'
alias cpur='cp -u -r'
alias rmf='rm -rf'
alias su='sudo su'
alias install='sudo apt-get install'
alias subl='sudo subl'

# if you want to keep ~/.bash_aliases shared between bash/zsh
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
