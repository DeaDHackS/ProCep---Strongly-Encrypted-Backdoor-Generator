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

echo $lightpurple$bold
echo -e "                /     ___  ____  ____  _  _      |"
echo -e "          /          / __)(  __)(  _ \/ )( \         |"
echo -e "    <               ( (__  ) _)  ) __/) __ (               >"
echo -e "        \            \___)(____)(__)  \_)(_/V:1.0.0    /$lightred$bold"
echo -e "|\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|"
echo -e " d$purple                     CEPH FILE ENCRYPTION$lightred                       b "
echo -e "d                                                                  b"
echo $lightyellow
echo -e "<<{1}>> Encrypt Folder/File No Password <<{1}>>"
echo -e "<<{2}>> Encrypt Folder/File Password/Key Protected <<{2}>>"
echo -e "<<{back}>> Back To ProCep Menu"
read -p "$lightred$HOSTNAME$lightgreen:$lightred$USERNAME$lightyellow \/$lightpurple Ceph$lightyellow :> " cephmenu

if [ $cephmenu == 1 ]
then
  clear
  echo $lightpurple$bold
  echo -e "                /     ___  ____  ____  _  _      |"
  echo -e "          /          / __)(  __)(  _ \/ )( \         |"
  echo -e "    <               ( (__  ) _)  ) __/) __ (               >"
  echo -e "        \            \___)(____)(__)  \_)(_/V:1.0.0    /$lightred$bold"
  echo -e "|\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|"
  echo -e " d$purple                     CEPH FILE ENCRYPTION$lightred                       b "
  echo -e "d                                                                  b"
  echo $lightyellow
  echo -e "File Path / Name:"
  echo -e "Example: /root/Desktop/somefile.anyformat"
  read -p "$lightred$HOSTNAME$lightgreen:$lightred$USERNAME$lightyellow \/$lightpurple Ceph$lightyellow :> " file2crypt
  if [ -e $file2crypt ]
  then
    echo -e "$lightgreen[i]The file seems to exist."$normal
  else
    echo -e "$lightred[X]Sorry, the file you entered does not exist."$normal
  exit
  fi
  clear
  echo $lightpurple$bold
  echo -e "                /     ___  ____  ____  _  _      |"
  echo -e "          /          / __)(  __)(  _ \/ )( \         |"
  echo -e "    <               ( (__  ) _)  ) __/) __ (               >"
  echo -e "        \            \___)(____)(__)  \_)(_/V:1.0.0    /$lightred$bold"
  echo -e "|\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|"
  echo -e " d$purple                     CEPH FILE ENCRYPTION$lightred                       b "
  echo -e "d                                                                  b"
  echo -e $lightaqua"File/Folder : $lightred$file2crypt"
  echo $lightyellow
  echo -e $lightyellow"[i]Launching Encryption ..."
  echo -e $lightyellow"Encryting file in RSA."
  clientkey="64A14131FEB5ECFC7929C8EA3A589C6B5FBA39D2"
  sleep 2
  gpg2 --encrypt --recipient $clientkey -- $file2crypt
  echo -e $lightgreen"[✔]Finish encrypting!"
  sleep 1
  echo -e $lightgreen"[✔]The format is modified, please change it back to normal and boom!!"
  read -p $lightyellow"Press any keys to continue ..."$normal
  cd $locadir/ && ./ceph.sh
fi

if [ $cephmenu == 2 ]
then
  clear
  echo $lightpurple$bold
  echo -e "                /     ___  ____  ____  _  _      |"
  echo -e "          /          / __)(  __)(  _ \/ )( \         |"
  echo -e "    <               ( (__  ) _)  ) __/) __ (               >"
  echo -e "        \            \___)(____)(__)  \_)(_/V:1.0.0    /$lightred$bold"
  echo -e "|\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|"
  echo -e " d$purple                     CEPH FILE ENCRYPTION$lightred                       b "
  echo -e "d                                                                  b"
  echo $lightyellow
  echo -e "File Path / Do not include the filename, make sure to put "/" at the end of the path:"
  echo -e "Example: /root/Desktop/"
  read -p "$lightred$HOSTNAME$lightgreen:$lightred$USERNAME$lightyellow \/$lightpurple Ceph$lightyellow :> " filepath
  if [ -e $filepath ]
  then
    echo -e "$lightgreen[i]The path seems to exist."$normal
  else
    echo -e "$lightred[X]Sorry, the path you entered does not exist."$normal
  exit
  fi
  clear
  echo $lightpurple$bold
  echo -e "                /     ___  ____  ____  _  _      |"
  echo -e "          /          / __)(  __)(  _ \/ )( \         |"
  echo -e "    <               ( (__  ) _)  ) __/) __ (               >"
  echo -e "        \            \___)(____)(__)  \_)(_/V:1.0.0    /$lightred$bold"
  echo -e "|\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|"
  echo -e " d$purple                     CEPH FILE ENCRYPTION$lightred                       b "
  echo -e "d                                                                  b"
  echo $lightyellow
  echo -e "File Name:"
  echo -e "Example: filename,anyformat"
  read -p "$lightred$HOSTNAME$lightgreen:$lightred$USERNAME$lightyellow \/$lightpurple Ceph$lightyellow :> " filename
  if [ -d $filename ]
  then
    echo -e "$lightgreen[i]The file seems to exist."$normal
  else
    echo -e "$lightred[X]Sorry, the file you entered does not exist."$normal
  exit
  fi
  clear
  clear
  echo $lightpurple$bold
  echo -e "                /     ___  ____  ____  _  _      |"
  echo -e "          /          / __)(  __)(  _ \/ )( \         |"
  echo -e "    <               ( (__  ) _)  ) __/) __ (               >"
  echo -e "        \            \___)(____)(__)  \_)(_/V:1.0.0    /$lightred$bold"
  echo -e "|\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/|"
  echo -e " d$purple                     CEPH FILE ENCRYPTION$lightred                       b "
  echo -e "d                                                                  b"
  echo -e $lightaqua"File/Folder Path : $lightred$filepath"
  echo -e $lightaqua"File/Folder Name : $lightred$filename"
  echo $lightaqua
  echo -e "<<{Choose What Encryption To Use}>>"
  echo -e "<<{1}>> SHA-512"
  echo -e "<<{2}>> Blake2s-256"
  echo -e "<<{3}>> MD5"
  echo -e "<<{4}>> AES-256-CBC"
  echo -e "<<{5}>> RC2-OFB"
  echo -e "<<{6}>> CAST"
  echo -e "<<{7}>> DES-EDE3" 
  read -p "$lightred$HOSTNAME$lightgreen:$lightred$USERNAME$lightyellow \/$lightpurple Ceph$lightyellow :> " encryption
  case $encryption in
    1) encryption="sha512" ;;
    2) encryption="blake2s256" ;;
    3) encryption="md5" ;;
    4) encryption="aes-256-cbc" ;;
    5) encryption="rc2-ofb" ;;
    6) encryption="cast" ;;
    7) encryption="des-ede3" ;;
  esac
  openssl $encryption -a -salt -in $filename -out $filename
  echo -e $lightgreen"[✔]Finish encrypting!"
  sleep 1
  echo -e $lightgreen"[✔]The format is modified, please change it back to normal and boom!!"
  read -p $lightyellow"Press any keys to continue ..."$normal
  cd $locadir/ && ./ceph.sh
fi

if [ $cephmenu == "back" ]; then
  cd $localdir/ && ./procepmenu.sh
fi
 












fi















 
























