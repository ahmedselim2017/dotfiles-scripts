# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ubuntu/.oh-my-zsh"

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
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000

setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

plugins=(
    git
    zsh-autosuggestions
    z
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


# Aliases

# Configs
alias vimconfig="vim ~/dotfiles-scripts/dotfiles/vimrc"
alias zshconfig="vim ~/dotfiles-scripts/dotfiles/zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias resetZSHSource="source ~/.zshrc"

# Some Commands
alias cl="command clear"
alias cls="command clear; ls"
alias rf="rm -rf"
alias s="sudo "
alias mkd='mkdir -pv'
alias smkd="sudo mkdir -pv"
alias btw="neofetch"
alias jpy="jupyter notebook"
alias haydaa='s $(fc -ln -1)'
alias yaa='yay $(fc -ln -1)'
alias q='exit'
alias 'cd..'='cd ..'
alias pis='pip install'

# Git
alias g="git"
alias gs="git status"
alias gaa="git add -A"
alias gad="git add ."
alias gpm="git push origin master"
alias gc="git commit -m"
alias gca="git commit -am"

# Vim
alias vi="vim"
alias v="vim"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/ahmedselim/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
    #eval "$__conda_setup"
#else
if [ -f "/home/ubuntu/anaconda3/etc/profile.d/conda.sh" ]; then
    . "/home/ubuntu/anaconda3/etc/profile.d/conda.sh"
else
    export PATH="/home/ubuntu/anaconda3/bin:$PATH"
fi
#fi
#unset __conda_setup
# <<< conda initialize <<<
