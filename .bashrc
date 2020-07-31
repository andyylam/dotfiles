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

alias vim="nvim"
