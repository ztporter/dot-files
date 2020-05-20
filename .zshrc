# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/zach/.oh-my-zsh"

POWERLEVEL9K_MODE='nerdfont-complete'

# Configure prompt using powerlevel9k
# Note: run the following commands to check the available colors and the set icons
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
# 
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs command_execution_time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"

POWERLEVEL9K_DIR_HOME_BACKGROUND='006'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='006'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='006'
POWERLEVEL9K_DIR_ETC_BACKGROUND='006'

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=2
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='235'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='255'

POWERLEVEL9K_EXECUTION_TIME_ICON='\uF49B'

POWERLEVEL9K_STATUS_OK_BACKGROUND='242'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='005'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='016'

POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_ETC_ICON=''

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='003'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='005'

POWERLEVEL9K_VCS_UNSTAGED_ICON='\uE238'
POWERLEVEL9K_VCS_UNTRACKED_ICON='\uE007'
POWERLEVEL9K_VCS_STAGED_ICON='\uE257'
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='\uE340'
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='\uE353'

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

VIRTUAL_ENV_DISABLE_PROMPT=1
POWERLEVEL9K_PYTHON_ICON='\uF1D0'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions fzf)

source $ZSH/oh-my-zsh.sh

# Visual customisation of the second prompt line
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" %{%B%F{009}%}%{%f%F{011}%}%{%f%F{014}%}%{%b%f%} "

# Add brew installed ruby and gems to PATH
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=/usr/local/lib/ruby/gems/2.6.0/bin:$PATH

# Add helpful aliases
alias gitlab="cd ~/nanoracks/gitlab"
alias ll='ls -alG'
alias ls='ls -aG'
alias ..='cd ..'
alias cov='coverage html;open htmlcov/index.html'

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Ensure proper config setting for tmuxinator
export EDITOR='vim'
source ~/.bin/tmuxinator.zsh

export PATH=/usr/local/sbin:$PATH

eval "$(rbenv init -)"

set -o vi
