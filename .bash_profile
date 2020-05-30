# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi
 
# User specific environment and startup programs
PATH=$PATH:$HOME/bin
export PATH
 
# Locale settings necessary for Python3
export LC_ALL="en_US.utf8"
export LANG="en_US.utf8"
