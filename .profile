export PATH=/usr/local/sbin:$PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTFILESIZE=99999999
HISTSIZE=99999999

export HISTTIMEFORMAT="%d/%m/%y %T "

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac


PS1='\[\033[32m\]\h\e[0;37m@\[\033[36m\]\u\[\033[m\]:\[\033[33;1m\]\w\[\033[m\] \$ '

# ~/.dircolors/themefile
eval $(gdircolors ~/.dircolors/dircolors.256dark)

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export GCC_COLORS='error=00;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export CLICOLOR=1