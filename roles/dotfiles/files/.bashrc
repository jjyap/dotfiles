# for Brew
export PATH="/usr/local/bin:$PATH"
# For user bins
export PATH="$HOME/.local/bin:$PATH"

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
if [ -f ~/.alias ]; then
    source ~/.alias
fi

eval "$(direnv hook bash)"
