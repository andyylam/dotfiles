cite 'about-alias'
about-alias 'common git abbreviations'

# Aliases
alias gclean='git checkout -- .'
alias ga='git add -A'
alias gs='git status'
alias gmaster='git checkout master; git pull origin master;'
alias gc='git commit -m '
alias gd='git diff'
alias glog='git log --graph --pretty=oneline --abbrev-commit'
alias gg="git log --graph --pretty=format:'%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset' --abbrev-commit --date=relative"
