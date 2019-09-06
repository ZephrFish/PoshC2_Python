#!/bin/bash

if [[ -z "${POSHC2_PROJDIR}" ]]; then
    project_folder="/opt/PoshC2_Project"
else
    project_folder=${POSHC2_PROJDIR} 
fi

sudo docker run -ti --rm -v $project_folder:/opt/PoshC2_Python/project nettitude/poshc2 "posh $@"

