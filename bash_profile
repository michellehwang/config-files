export CLICOLOR=1

##################
### MY ALIASES ###
##################
alias 61a='cd ~/Dropbox/cs61a/cs61a-python'
alias vim='mvim -v'
alias pyserv='python -m SimpleHTTPServer'

# git command autocompletion script
#source ~/bin/git-completion.bash

# git commamands simplified
alias gst='git status'
alias gco='git checkout'
alias gci='git commit'
alias grb='git rebase'
alias gbr='git branch'
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# simple ip
alias ip='wget -qO- http://ipecho.net/plain | pbcopy'
# more details
alias ip1="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
# external ip
alias ip2="curl -s http://www.showmyip.com/simple/ | awk '{print $1}'"

# grep with color
alias grep='grep --color=auto'

# processes
#alias ps='ps -ax'

# refresh shell
alias reload='source ~/.bash_profile'

###############################
### ENVIRONMENTAL VARIABLES ###
###############################
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Add personal bin to PATH variable
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:/Users/michellehwang/bin:/usr/local/bin:/usr/bin/ruby;

# Change prompt
PS1_OLD=${PS1}
export PS1='\[\033[1;91m\][\t]\[\033[0m\] \[\033[1;94m\]\u\[\033[0m\]:\[\033[1;92m\]\w\[\033[0m\]\[\033[1;91m\]$(parse_git_branch)\[\033[0m\]\[\033[1;97m\] $ '

