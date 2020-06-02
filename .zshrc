# Path to your oh-my-zsh installation.
export ZSH="/Users/koskywalker/.oh-my-zsh"

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

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_os_icon context battery dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time dir_writable ip custom_wifi_signal ram load background_jobs)

POWERLEVEL9K_CUSTOM_OS_ICON="echo -e '\uf179' "
POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND="black"
POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND="white"

POWERLEVEL9K_CONTEXT_TEMPLATE="%n"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND=052
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="white"

POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND=058
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND="white"
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND=058
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND="white"
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND=058
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND="white"
POWERLEVEL9K_BATTERY_LOW_BACKGROUND=058
POWERLEVEL9K_BATTERY_LOW_FOREGROUND="white"
POWERLEVEL9K_BATTERY_ICON="\uf1e6 "

POWERLEVEL9K_SHORTEN_DIR_LENGTH=7
POWERLEVEL9K_HOME_ICON="\uf015 "
POWERLEVEL9K_HOME_SUB_ICON="\uf07c "
POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_DIR_HOME_BACKGROUND=022
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=022
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=022
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

POWERLEVEL9K_VCS_GIT_ICON="\uf1d2 "
POWERLEVEL9K_VCS_GIT_GITHUB_ICON="\uf113 "
POWERLEVEL9K_VCS_GIT_GITLAB_ICON="\uf296 "
POWERLEVEL9K_VCS_BRANCH_ICON=""
POWERLEVEL9K_VCS_STAGED_ICON="\uf055"
POWERLEVEL9K_VCS_UNSTAGED_ICON="\uf421"
POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON="\uf0ab "
POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON="\uf0aa "
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=018
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="white"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=018
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="white"
POWERLEVEL9K_VCS_CLOBBERED_BACKGROUND=018
POWERLEVEL9K_VCS_CLOBBERED_FOREGROUND="white"
POWERLEVEL9K_VCS_UNTRACKED_ICON="\uf00d"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=018
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="white"

POWERLEVEL9K_TIME_FORMAT="%D{\uf073  %Y/%m/%d  \uf017  %H:%M}"
POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND=207

POWERLEVEL9K_NETWORK_ICON="\uf041"
POWERLEVEL9K_IP_BACKGROUND="black"
POWERLEVEL9K_IP_FOREGROUND=123

POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="black"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND=010

POWERLEVEL9K_RAM_ICON="\uf538 "
POWERLEVEL9K_RAM_BACKGROUND="black"
POWERLEVEL9K_RAM_FOREGROUND=011

POWERLEVEL9K_LOAD_ICON="\uf252 "
POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_WARNING_BACKGROUND="black"
POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="black"
POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND=203
POWERLEVEL9K_LOAD_WARNING_FOREGROUND=197
POWERLEVEL9K_LOAD_NORMAL_FOREGROUND=197

POWERLEVEL9K_STATUS_VERBOSE=true
POWERLEVEL9K_STATUS_CROSS=true

zsh_wifi_signal(){
    local output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I)
    local airport=$(echo $output | grep 'AirPort' | awk -F': ' '{print $2}')

    if [ "$airport" = "Off" ]; then
        echo -n "Wifi Off"
    else
        local ssid=$(echo $output | grep ' SSID' | awk -F': ' '{print $2}')
        local speed=$(echo $output | grep 'lastTxRate' | awk -F': ' '{print $2}')
        echo -n "$speed Mbps \uf1eb%{%f%} " # removed char not in my PowerLine font
    fi
}

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
