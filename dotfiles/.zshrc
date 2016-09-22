# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Set vim mode
bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/pbird/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall
export PATH="/usr/local/sbin:$PATH"

# Set delay to 0.1 seconds for vim mode
export KEYTIMEOUT=1

ZSH_GIT_FILEPATH="$HOME/.config/zsh-git-prompt/zshrc.sh"
if [ -f $ZSH_GIT_FILEPATH ]; then
    source $ZSH_GIT_FILEPATH
    PROMPT='%B%m%~%b$(git_super_status) %# '
fi

