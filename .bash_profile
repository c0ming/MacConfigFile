# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth:erasedups
HISTSIZE=5000000
shopt -s histappend
shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

TERM=xterm-color
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

export PS1="\[$(tput bold)\]\[\033[38;5;184m\]\w\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]\\$\[$(tput sgr0)\]"

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

alias ll='ls -alF'
alias la='ls -A'

alias python_http='python -m SimpleHTTPServer 8080'
alias ping='ping -c 4'
alias pod_no_repo_update='pod install --no-repo-update'
alias ssh_root='ssh root@45.32.18.156'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
fi

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

export CLICOLOR=1
# export LSCOLORS=ExFxCxDxBxegedabagacad
export LSCOLORS=GxFxCxDxBxegedabagaced

export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35;40'
export GEM_HOME=$HOME/c0ming/Ruby
export PATH=${PATH}:$GEM_HOME/bin
export PATH=${PATH}:/Users/c0ming/develop/Android/android-ndk-r8b
export PATH=$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin/
export PATH=$PATH:/usr/local/mysql/bin/
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export FIGNORE=DS_Store:
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

export GOROOT=/usr/local/go
export PATH=$GOROOT/bin:$PATH
export GOPATH=$HOME/golang
