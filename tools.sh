#!/usr/bin/env bash


######################################################
#       Automação Desenvolvida por Thiago Oliveira   #
#                versão 1.0                          #
#        Todos os direito autorais reservados        #
#        e-mail: thiagooliveira1985@gmail.com        # 
# Quem quiser adicionar novas funções esta autorizado#
# Ferramenta desenvolvida para facilitar um pentest  #
#                                                    #
######################################################


#cls

while :
do
      echo -e "----Menu de opções-----\n"
      
      echo "1 - TCDUMP avançado"
      echo "2 - Whois"
      echo "3 - Whois avançado"
      echo "4 - Consulta de DNS"
      echo "5 - Transferencia de zona DNS"
      echo "6 - ping simples"
      echo "7 - Portas Abertas"
      echo "8 - Mostrar SO"
      echo "9 - Serviços do Sistema"
      echo "10- Capturar BANNER com Script nmap"
      echo "11- Buscando mais vul ip nos em toda rede"
      echo "12- Enumerando DNS"
      echo "13- Transferencia de Dominio"
      echo "14 -Varrer toda a rede "
      echo "15 -Filtrando somente ips na varredura "
      echo "16 -Novo Menu "
	  echo "17 -Burlando FireWall v1"
	  echo "18 -Burlando FireWall v2"
	  echo "19 -Burlando FireWall v3"
	  echo "20 -Buscando Falha DDos"
	  echo "21 -Bruter-force em banco MySQL"
	  
      echo "--------------------"
      read -p "Opção: " OPCAO

#Faz um tcdump mas avançano no ip alvo
      case "$OPCAO" in
        "1")
        echo "Informe o numero IP: "
        read IP
        echo Fazendo scan no ip $IP 
        tcpdump -n -c 4 -i eth0 icmp and scr $IP 
               		
       esac

#Pesquisa de infomação de um site de uma forma simple.

       case "$OPCAO" in
         "2") 
        echo "Informe o endereço a ser pesquisado: "
        read site
        echo pesquisando endereço $site
        whois $site   
        
        esac

#Pesquisa avançada de um site no registro.com.br

      case "$OPCAO" in
        "3")
        echo "Informe o endereço a ser pesquisado: "
        read site
        echo pesquisando endereço $site
        whois $site -h whois.dns.pt  
                  
       esac

#Pesquisa de transferencia de zona

       case "$OPCAO" in
         "4") 
        echo "Informe o endereço a ser pesquisado: "
        read site
        echo pesquisando endereço $site
        host $site  
        
        esac

#Fazendo transferencia de zona

        case "$OPCAO" in
         "5") 
        echo "Informe o endereço a ser pesquisado: "
        read site
        echo pesquisando endereço $site
        host -t NS $site  
        
        esac

#Realizando um ping simple 

        case "$OPCAO" in
         "6") 
        echo "Informe o endereço a ser pesquisado: "
        read site
        echo pesquisando endereço $site
        ping  $site  
        
        esac

#Encontrando portas abertas

       case "$OPCAO" in
         "7") 
        echo "Informe o endereço a ser pesquisado: "
        read IP
        echo pesquisando endereço $IP
        nmap -n -sV $IP 
        
        esac

#Mostrar SO 

       case "$OPCAO" in
         "8") 
        echo "Informe o endereço a ser pesquisado: "
        read IP
        echo pesquisando endereço $IP
        nmap -O $IP  
        
        esac

#Mostrar Serviços do Sistema em execução.

       case "$OPCAO" in
         "9") 
        echo "Informe o endereço a ser pesquisado: "
        read IP
        echo pesquisando endereço $IP
        nmap -sV $IP  
        
        esac
#Capturar banner usando o script do nmap

       case "$OPCAO" in
         "10") 
        echo "Informe o endereço a ser pesquisado: "
        read IP
        echo pesquisando endereço $IP
        nmap $IP -P 25 --script banner.nse
        
        esac
#Analisando vulnerabilidades em mais enderecos ips na rede 

      case "$OPCAO" in
         "11") 
        echo "Informe o endereço a ser pesquisado: "
        read IP
        echo pesquisando endereço $IP
        nmap -sS -v -Pn -A --open --script=vuln $ip
     
       esac

#Enumerando DNS

      case "$OPCAO" in
         "12") 
        echo "Informe o endereço a ser Enumerado: "
        read site
        echo Enumerando endereço, aguarde $site
        dig -t ns $site
     
       esac

#Transferenca de Dominio

      case "$OPCAO" in
         "13") 
        echo "Informe o Dominio a ser transferido: "
        read site
        echo pesquisando endereço $site
        dig -t axfr $site
     
       esac

#Varrer toda a rede


      case "$OPCAO" in
         "14") 
        echo "Informe o endereço a ser pesquisado: "
        read IP
        echo pesquisando endereço $IP
        nmap -sn $IP
     
       esac

#Varrendo somente ips na verredura 

      case "$OPCAO" in
         "15") 
        echo "Informe o endereço a ser pesquisado: "
        read IP
        echo pesquisando endereço $IP
        nmap -sn $IP | grep 192 | cut -d 'espaço' F S  
     
       esac 
	   
#Abrindo menu novamente

      case "$OPCAO" in
         "16") 
        echo "Se voce tem certeza disso responda ok ou então aguarde 32s?: "
        read ok
        echo Abrindo novo Menu $ok
        ./tools.sh

       esac
	   
#Burlando FireWall v1

     case "$OPCAO" in
         "17") 
        echo "Informe o endereço a ser pesquisado: "
        read IP
        echo pesquisando endereço $IP
        nmap -f -sV -A  $IP
     
       esac              
#Burlando FireWall v2

     case "$OPCAO" in
         "18") 
        echo "Informe o endereço a ser pesquisado: "
        read IP
        echo pesquisando endereço $IP
		nmap -sS -sV -A $IP
		esac
		
#Burlando FireWall v3

     case "$OPCAO" in
         "19") 
        echo "Informe o endereço a ser pesquisado: "
        read IP
        echo pesquisando endereço $IP
		nmap -Pn -sV -A $IP
		
        esac


#Buscando falha DDos

     case "$OPCAO" in
         "20") 
        echo "Informe o endereço a ser pesquisado: "
        read IP
        echo pesquisando endereço $IP
		nmap -sU -A -PN -n -pU:19,53,123,161 –script=ntp-monlist,dns-recursion,snmp-sysdescr $IP
		
        esac				


#Força bruta em banco de dados mysql

     case "$OPCAO" in
         "21") 
        echo "Informe o endereço a ser pesquisado: "
        read IP
        echo pesquisando endereço $IP
		nmap --script=mysql-brute $IP
		
        esac		

		
		
    sleep 25  


done
