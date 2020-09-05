#!/bin/bash

cd ~/alura-infra/shell-script-II

regex='\b([0-9]{1,3}\.){3}[0-9]{1,3}\b'

if [[ $1 =~ $regex ]]
then
    cat apache.log | grep $1
    if [ $? -ne 0 ]
    then 
        echo "Ip procurado não esta presente no arquivo"
    fi
else
    echo "Formato ip não é valido"
fi


