export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerline"

export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh

# Shortcuts
alias dl="cd ~/Downloads"
alias gh="cd ~/Github"
alias lampp="sudo /opt/lampp/lampp"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
