# Path to your oh-my-zsh installation.
export ZSH=/Users/USERNAME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(sublime sudo web-search brew zsh-syntax-highlighting git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/Applications/VMware Fusion.app/Contents/Library"
# export MANPATH="/usr/local/man:$MANPATH"

export PATH="/usr/local/sbin:$PATH"
export PATH=/usr/local/bin:$PATH

# Auto update
DISABLE_UPDATE_PROMPT=true

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

autoload -U promptinit
promptinit

####################################
#      My custom settings          #
####################################

# Custom PATHS

# VMware Fusion
if [ -d "/Applications/VMware Fusion.app/Contents/Library" ]; then
    export PATH=$PATH:"/Applications/VMware Fusion.app/Contents/Library"
fi

# Homebrew settings
# export HOMEBREW_BUILD_FROM_SOURCE=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_EMOJI=1
export HOMEBREW_NO_ANALYTICS=1

# Aliases

alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias c='clear'
alias ch='echo "" > ~/.zsh_history & exec $SHELL -l'
alias s='screen'
alias doh='ssh-keygen -R'
alias cleandl="sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
alias up='brew update && brew upgrade && upgrade_oh_my_zsh'
alias upmymac='softwareupdate -i -a'
alias batt='pmset -g batt'
alias mac='archey'
alias ip='wget http://ipinfo.io/ip -qO -'

alias mini='ssh dombera@m1'
alias minig='open vnc://m1:5900'

alias g='open https://www.google.com'

alias kali='ssh root@192.168.74.180'
alias debian='ssh ladmin@192.168.74.178'

alias debianon='vmrun start ~/Documents/Virtual\ Machines.localized/debian8.vmwarevm/debian8.vmx nogui'
alias kalion='vmrun start ~/Documents/Virtual\ Machines.localized/kali.vmwarevm/kali.vmx nogui'
# NO GUI alias kali='vmrun start ~/Documents/Virtual\ Machines.localized/kali.vmwarevm/kali.vmx nogui'

alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'

alias code='oathtool -d 8 -c 1004 3132333435363738393031323334353637383007'

alias m='vmrun start ~/Documents/Virtual\ Machines.localized/m.vmwarevm/m.vmx'
alias ms='vmrun suspend ~/Documents/Virtual\ Machines.localized/m.vmwarevm/m.vmx soft'

alias pf='vmrun start ~/Documents/Virtual\ Machines.localized/pf.vmwarevm/pf.vmx nogui'
alias pfs='vmrun suspend ~/Documents/Virtual\ Machines.localized/pf.vmwarevm/pf.vmx soft'
alias va='vmrun start ~/Documents/Virtual\ Machines.localized/va.vmwarevm/va.vmx nogui'
alias vas='vmrun suspend ~/Documents/Virtual\ Machines.localized/va.vmwarevm/va.vmx soft'
alias dc1='vmrun start ~/Documents/Virtual\ Machines.localized/dc1.vmwarevm/dc1.vmx'
alias dc1s='vmrun suspend ~/Documents/Virtual\ Machines.localized/dc1.vmwarevm/dc1.vmx soft'
alias win10='vmrun start ~/Documents/Virtual\ Machines.localized/win10.vmwarevm/win10.vmx'
alias win10s='vmrun suspend ~/Documents/Virtual\ Machines.localized/win10.vmwarevm/win10.vmx soft'

alias lab='vmrun start ~/Documents/Virtual\ Machines.localized/pf.vmwarevm/pf.vmx nogui; vmrun start ~/Documents/Virtual\ Machines.localized/va.vmwarevm/va.vmx nogui; vmrun start ~/Documents/Virtual\ Machines.localized/dc1.vmwarevm/dc1.vmx'
alias labs='vmrun suspend ~/Documents/Virtual\ Machines.localized/pf.vmwarevm/pf.vmx soft; vmrun suspend ~/Documents/Virtual\ Machines.localized/va.vmwarevm/va.vmx soft; vmrun suspend ~/Documents/Virtual\ Machines.localized/dc1.vmwarevm/dc1.vmx soft'
