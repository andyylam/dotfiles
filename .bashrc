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
alias devmac="ssh andy.lam@10.227.75.141"

cover () { 
    t="/tmp/go-cover.$$.tmp"
    go test -coverprofile=$t $@ && go tool cover -html=$t && unlink $t
}
alias ksc="kitool new -c -i ../../cpputil/service_rpc_idl/ad/pangrowth/pangle_governor.thrift -pre code.byted.org/ad/pangle_site -cmd thrift ad.pangle.governor"
alias kss="kitool new -s -i ~/go/src/code.byted.org/cpputil/service_rpc_idl/ad/pangrowth/pangle_governor.thrift -pre code.byted.org/ad/pangle_site/ -cmd thrift ad.pangle.governor"
alias kg="kitool new -s -i ~/go/src/code.byted.org/cpputil/service_rpc_idl/ad/pangrowth/pangle_governor.thrift -pre code.byted.org/ad/pangle_governor/ -cmd thrift ad.pangle.governor"
