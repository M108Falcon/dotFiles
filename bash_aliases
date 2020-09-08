# Bash Aliases file
# Remember to install exa for ls alias to work

# Extract any archive
# Usage: ex <file>
ex() {
  if [ -f $1 ] ; then case $1 in *.tar.bz2)  tar xjvf $1   ;;
      *.tar.gz)   tar xzvf $1   ;;
      *.bz2)      bunzip2 $1    ;;
      *.rar)      unrar x $1    ;;
      *.gz)       gunzip $1     ;;
      *.tar)      tar xvf $1    ;;
      *.tbz2)     tar xjvf $1   ;;
      *.tgz)      tar xzvf $1   ;;
      *.zip)      unzip $1      ;;
      *.Z)        uncompress $1 ;;
      *.7z)       7z x $1       ;;
      *.tar.xz)   tar xvf $1    ;;
      *)          echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# package manager based aliases
alias aptg="sudo apt update && sudo apt upgrade"
alias aptu="sudo apt update"
alias apti="sudo apt install"
alias aptr="sudo apt purge --autoremove"
alias aptl="sudo apt list"
alias aptf="sudo apt install -f"
alias aptc="sudo apt clean"
alias debi="sudo dpkg -i"

# ls based aliases
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias ls='exa --icons'
alias ll='exa -l --all --icons'
alias la='exa --all --icons'
alias l='ls -CF'

# grep based aliases
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# direcotry movements
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."

# additional flags
alias rm="rm -i"
alias cp="cp -i"
alias df="df -h"
alias du="du -sh"
alias free="free -m"

# git based aliases
alias clone="git clone"
alias add="git add"
alias commit="git commit -m"
alias checkout="git checkout"
alias branch="git branch"
alias push="git push"
alias pull="git pull"
alias status="git status"

# python based aliases
alias snek="python3"  # Just for fun :)
alias getServer="python3 -m http.server 8080 --bind '192.168.1.25'" # insert ip address of your machine within '' after bind switch

# random stuff
#alias ligature="cat ~/Documents/Misc/ligatures.txt"
alias parrot="curl parrot.live"
