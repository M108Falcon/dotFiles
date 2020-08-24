# Bash Aliases file

# package manager based aliases
alias aptg="sudo apt update && sudo apt upgrade"
alias aptu="sudo apt update"
alias apti="sudo apt install"
alias aptr="sudo apt purge --autoremove"
alias aptl="sudo apt list"
alias aptf="sudo apt install -f"
alias aptc="sudo apt clean"
alias debi="sudo dpkg -i"

# direcotry movements
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."

# adding flags
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
alias snek="python3"
alias getServer="python3 -m http.server 8080 --bind '192.168.1.25'"

# random stuff
alias ligature="cat ~/Documents/Misc/ligatures.txt"
alias parrot="curl parrot.live"
