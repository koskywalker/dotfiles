# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# ==================================================
# POWERLEVEL9K START
# ==================================================

POWERLEVEL9K_MODE="nerdfont-complete"

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF460%F{073}\uF460%F{109}\uF460%f "

POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_os_icon time context ip dir_writable dir vcs status)
POWERLEVEL9K_DISABLE_RPROMPT=true

# custom_os_icon
POWERLEVEL9K_CUSTOM_OS_ICON="echo -e '\uf179' "
POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND=none
POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND=white

# time
POWERLEVEL9K_TIME_FORMAT="%D{%Y/%m/%d %H:%M}"
POWERLEVEL9K_TIME_BACKGROUND=none
POWERLEVEL9K_TIME_FOREGROUND=197

# context
POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND=none
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=011

# ip
POWERLEVEL9K_NETWORK_ICON="\uf041"
POWERLEVEL9K_IP_BACKGROUND=none
POWERLEVEL9K_IP_FOREGROUND=123

# dir_writable
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND=001
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND=white

# dir
POWERLEVEL9K_SHORTEN_DIR_LENGTH=7
POWERLEVEL9K_HOME_ICON="\uf015 "
POWERLEVEL9K_HOME_SUB_ICON="\uf07c "
POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_DIR_HOME_BACKGROUND=none
POWERLEVEL9K_DIR_HOME_FOREGROUND=012
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=none
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=012
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=none
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=012

# vcs
POWERLEVEL9K_VCS_GIT_ICON="\uf1d2 "
POWERLEVEL9K_VCS_GIT_GITHUB_ICON="\uf113 "
POWERLEVEL9K_VCS_GIT_GITLAB_ICON="\uf296 "
POWERLEVEL9K_VCS_BRANCH_ICON=""
POWERLEVEL9K_VCS_STAGED_ICON="\uf055"
POWERLEVEL9K_VCS_UNSTAGED_ICON="\uf421"
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON="\uf0ab "
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON="\uf0aa "
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=none
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=207
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=none
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=207
POWERLEVEL9K_VCS_CLOBBERED_BACKGROUND=none
POWERLEVEL9K_VCS_CLOBBERED_FOREGROUND=207
POWERLEVEL9K_VCS_UNTRACKED_ICON="\uf00d"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=none
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=207

# status
POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_BACKGROUND=none

# ==================================================
# oh-my-zsh デフォルト設定
# ==================================================

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=ja_JP.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ==================================================
# path
# ==================================================

# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"
