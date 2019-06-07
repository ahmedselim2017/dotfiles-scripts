# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ahmedselimuzum/.oh-my-zsh"

export EDITOR="/usr/bin/vim"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

plugins=(
    git
 #   vi-mode    
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


# Aliases

# Configs
alias i3config="vim ~/dotfiles/i3/config"
alias vimconfig="vim ~/dotfiles/vimrc"
alias zshconfig="vim ~/dotfiles/zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias resetZSHSource="source ~/.zshrc"

# Some Commands
alias cls="command clear"
alias rf="rm -rf"
alias s="sudo "
alias v="vim"
alias sv="sudo vim"
alias mkd="mkdir -pv"
alias smkd="sudo mkdir -pv"

# Apt
alias sa="sudo apt"
alias sai="sudo apt install"
alias sau="sudo apt update && sudo apt upgrade"
alias ac="apt-cache"
alias acs="apt-cache search"

# Python
alias py="python"
alias py3="python3"

# Pip
alias sp3="sudo pip3"
alias sp="sudo pip"
alias sp3i="sudo pip3 install"
alias spi="sudo pip install"

# Git
alias g="git"
alias gs="git status"
alias gaa="git add -A"
alias gad="git add ."
alias gpm="git push origin master"
alias gc="git commit -m"
alias gac="git commit -am"

#Executable Files
alias gdrive="~/gDrive"

