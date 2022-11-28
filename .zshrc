# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

# Set custom zsh theme
source ~/.zshrc.d/theme.zshrc

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions fzf)

source $ZSH/oh-my-zsh.sh

# Add non-plugins zsh features
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add helpful aliases
source ~/.zshrc.d/aliases.zshrc

# Set editor and command line editing to vim
export EDITOR='vim'
set -o vi
