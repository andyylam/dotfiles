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

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias leet="cd /Users/andyylam/OneDrive\ -\ National\ University\ of\ Singapore/miscellaneous/applying\ for\ jobs/leet"
alias sshtunnels="ssh -N -f -L 8889:localhost:8888 3244-2010-0031@3.128.91.128 && ssh -N -f -L 8888:localhost:8888 3244-2010-0031@ec2-18-190-83-29.us-east-2.compute.amazonaws.com"
