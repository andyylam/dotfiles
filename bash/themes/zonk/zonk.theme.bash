
if tput setaf 1 &> /dev/null; then
    if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
        MAGENTA=$(tput setaf 9)
        ORANGE=$(tput setaf 172)
        GREEN=$(tput setaf 190)
        PURPLE=$(tput setaf 141)
        CYAN=$(tput setaf 6)
        WHITE=$(tput setaf 0)
    else
        MAGENTA=$(tput setaf 5)
        ORANGE=$(tput setaf 4)
        GREEN=$(tput setaf 2)
        PURPLE=$(tput setaf 1)
        WHITE=$(tput setaf 7)
    fi
    BOLD=$(tput bold)
    RESET=$(tput sgr0)
else
    MAGENTA='\033[1;31m\]'
    ORANGE='\033[1;33m\]'
    GREEN='\033[1;32m\]'
    PURPLE='\033[1;35m\]'
    WHITE='\033[1;37m\]'
    BOLD=''
    RESET='\033[m\]'
fi


parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}
export PS1="\[${MAGENTA}\]\u@\h \[\${ORANGE}\]\w\n\[\${PURPLE}\]\$(parse_git_branch)\[\033[00m\] → "

