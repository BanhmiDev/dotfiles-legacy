export PATH=$HOME/bin:/usr/local/bin:$PATH

PROMPT="[%~] "

# Shortcuts
# Directories
alias ..="cd .."
alias dl="cd ~/Downloads"
alias gh="cd ~/Github"
alias dv="cd ~/Develop"
alias lampp="sudo /opt/lampp/lampp"

# Editors
alias vi=vim
alias svi='sudo vi'
alias vis='vim "+set si"'
alias edit='vim'

# Misc
alias genpasswd="strings /dev/urandom | grep -o '[[:alnum:]]' | head -n 30 | tr -d '\n'; echo"
alias makescript="fc -rnl | head -1 >"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
