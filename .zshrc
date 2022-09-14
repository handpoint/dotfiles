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

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/ecunado/.sdkman"
[[ -s "/Users/ecunado/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ecunado/.sdkman/bin/sdkman-init.sh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ecunado/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ecunado/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ecunado/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ecunado/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

