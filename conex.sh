#!/usr/bin/env bash

#Analise de serviços conectados

while :

do 

    echo "-------------------------------Analise de Processos-------------------------------------------" 
    echo ""
    echo "----------------------------------------------------------------------------------------------"
 
netstat -at
netstat -tupan

echo "----------------------Desenvolvido por Thiago Oliveira-------------------------------------------"
echo "-------------------------------------------------------------------------------------------------"
echo "----------------------------Atualização a cada 10s-----------------------------------------------"
echo "-------------------------------------------------------------------------------------------------"


sleep  5

clear

done
