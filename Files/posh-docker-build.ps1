#!/bin/bash

# trap ctrl-c and call ctrl_c()
trap ctrl_c INT

function ctrl_c() {
    popd > /dev/null
    exit
}
    
if [[ -z "${POSHC2_DIR}" ]]; then
    POSH_DIR="/opt/PoshC2_Python"
else
    POSH_DIR=${POSHC2_DIR} 
fi

pushd $POSH_DIR  >/dev/null

if [ "$?" -eq "0" ]; then
    posh-docker-clean
    sudo docker build --no-cache -t nettitude/poshc2 .
    popd > /dev/null

fi 

