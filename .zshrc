export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# Colors.
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# Don't require escaping globbing characters in zsh.
unsetopt nomatch

# Enable plugins.
plugins=(aws git github brew history npm osx)

# JAVA HOME
export JAVA_HOME=/Library/Java/JavaVirtualMachines/current

# Custom $PATH with extra locations.
export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:/usr/local/git/bin:$PATH

# Bash-style time output.
export TIMEFMT=$'\nreal\t%*E\nuser\t%*U\nsys\t%*S'

# User file
FILE=~/.zshrc_user
if [[ -f "$FILE" ]]; then
  source $FILE
fi

# Include alias file (if present) containing aliases for ssh, etc.
if [ -f ~/.aliases ]
then
  source ~/.aliases
fi
