#!/bin/bash

if [[ "$1" -ne "" ]]; then
    port="$1"
else
    port="443"
fi

if [[ -z "${POSHC2_PROJDIR}" ]]; then
    project_folder="/opt/PoshC2_Project"
else
    project_folder=${POSHC2_PROJDIR} 
fi

sudo docker run -ti --rm -p "$port":443 -v $project_folder:/opt/PoshC2_Python/project nettitude/poshc2 /usr/bin/posh-docker-entrypoint
