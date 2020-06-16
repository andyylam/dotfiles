source ~/.lib/composure.bash

cite _about _param _example _group _author _version

for filename in ~/.lib/*; do
	source $filename
done

# source ~/.bash/themes/colors.theme.bash
# source ~/.bash/themes/githelpers.theme.bash
# source ~/.bash/themes/p4helpers.theme.bash
# source ~/.bash/themes/base.theme.bash
source ~/.bash/themes/zonk/zonk.theme.bash

for filename in ~/.aliases/* ~/.completions/*; do
	source $filename
done

source ~/.bash/sqpc.bashrc
alias vim="~/backupdotfiles/neovim/nvim.appimage"
