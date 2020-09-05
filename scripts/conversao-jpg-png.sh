#!/bin/bash

converte_imagem(){

    cd ~/alura-infra/shell-script-I/imagens-livros
    if [ ! -d png ]
    then 
        mkdir png
    fi


    for imagem in *.jpg
    do 
        local imagem_sem_extencao=$(ls $imagem | awk -F. '{ print $1 }')
        convert $imagem_sem_extencao.jpg png/$imagem_sem_extencao.png
    done;
}

converte_imagem 2>erros_conversao.txt

if [ $? -eq 0 ]
then 
    echo "Conversão Realizada com sucesso!"
else 
    echo "Houve uma falha na execução!"
fi