#!/bin/bash


resposta=$(curl --write-out '%{http_code}' --silent --output /dev/null http://localhost)

if [ $resposta -ne 200 ]
then 
mail -s 'Problema no Servidor' capuzteste@gmail.com<<del
Houve um problema no servidor, e os usuarios pararam de ter acesso ao conteudo web.
del
    systemctl restart apache2 
fi