# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=3000
HISTFILESIZE=3000

# for Brew
export PATH="/usr/local/bin:$PATH"
# For user bins
export PATH="$HOME/.local/bin:$PATH"

if grep -q WSL /proc/version; then
    export PATH="/mnt/c/Windows/System32:$PATH"
fi

# don't put duplicates lines in bash history 
# See bash(1) for more options
HISTCONTROL=ignoredups:erasedups

# append to the history file, don't overwrite it
shopt -s histappend
shopt -s histverify
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Save history after every command
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

# Hides the default login message
export BASH_SILENCE_DEPRECATION_WARNING=1

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# Enable colors in bash
export CLICOLOR=1
export LSCOLORS=GxBxCxDxexegedabagaced
 
# get current git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# find username@hostname:$ 
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[0;32m\]\$(parse_git_branch)\[\033[00m\]\$ "

# Load alias file
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


if [ -f ~/.alias ]; then
    . ~/.alias
fi

eval "$(direnv hook bash)"

