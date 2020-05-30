
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
    MAGENTA="\033[1;31m\]"
    ORANGE="\033[1;33m\]"
    GREEN="\033[1;32m\]"
    PURPLE="\033[1;35m\]"
    WHITE="\033[1;37m\]"
    BOLD=""
    RESET="\033[m\]"
fi

GIT_THEME_PROMPT_DIRTY="\[${MAGENTA}\]✗"
GIT_THEME_PROMPT_CLEAN=" \[${BOLD}\]${green}✓"
GIT_THEME_PROMPT_PREFIX="${reset_color}on \[${PURPLE}\]["
GIT_THEME_PROMPT_SUFFIX="\[${PURPLE}\]]"

RVM_THEME_PROMPT_PREFIX="${reset_color}on ["
RVM_THEME_PROMPT_SUFFIX="["

function prompt_command() {
    PS1="\n${yellow}$(ruby_version_prompt)\[${MAGENTA}\]\h \[${ORANGE}\]\w\n${cyan}$(scm_prompt_info) \[${reset_color}\]→${reset_color} "
}

PROMPT_COMMAND=prompt_command;
