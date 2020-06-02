source ~/.tools/de-bash/cloud.sh
source ~/.tools/de-bash/common.sh
source ~/.tools/de-bash/nomad.sh
source ~/.tools/de-bash/psql.sh

source /opt/rh/rh-python36/enable
export PATH=~/opt:$PATH
export PATH=/lxhome/sapralak/nomad/:$PATH

qu() {
    /opt/sp/qlib/3.6u.x86_64/q
}

q() {
    /opt/sp/qlib/3.6.x86_64/q
}
 
