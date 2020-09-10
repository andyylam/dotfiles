# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
 
# Locale settings necessary for Python3
export LC_ALL="en_US.utf8"
export LANG="en_US.utf8"

# export GOPROXY="https://go-mod-proxy.byted.org,https://goproxy.cn,https://proxy.golang.org,direct"
# export GOPRIVATE="*.byted.org,*.everphoto.cn"
# export GOSUMDB="sum.golang.google.cn"
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin

export GOPROXY="https://go-mod-proxy.byted.org,https://goproxy.cn,https://proxy.golang.org,direct"
export GOPRIVATE="*.byted.org,*.everphoto.cn,git.smartisan.com"
export GOSUMDB="sum.golang.google.cn"

# User specific environment and startup programs
PATH=$PATH:$HOME/bin
PATH=$PATH:$GOBIN
export PATH
