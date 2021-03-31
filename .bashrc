source ~/.lib/composure.bash

cite _about _param _example _group _author _version

for filename in ~/.lib/*; do
	source $filename
done

source ~/.bash/themes/zonk/zonk.theme.bash

for filename in ~/.aliases/* ~/.completions/*; do
	source $filename
done

HISTSIZE= 
HISTFILESIZE=
export PATH=$PATH:/usr/local/opt/riscv-gnu-toolchain/bin


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias leet="cd /Users/andyylam/OneDrive\ -\ National\ University\ of\ Singapore/miscellaneous/applying\ for\ jobs/leet"
alias sunfire="ssh andy-lam@sunfire.comp.nus.edu.sg"
alias climbgowhere="ssh root@139.59.122.73"
alias vim="nvim"
