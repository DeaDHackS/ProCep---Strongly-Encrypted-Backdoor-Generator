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
echo -e "                                                    $lightgreen[99]$lightred About ProCep"
echo $normal$bold 
read -p "$lightgreen$HOSTNAME$lightred /$lightgreen $USERNAME$lightyellow :::>$normal$bold " menuchoice

if [ $menuchoice == 1 ]
then
  exec /bin/ProCep/prophet.sh
fi
if [ $menuchoice == 99 ]
then
  echo -e $lightyellow"Creator/Author : Ghosty/DeaDHackS Team"$normal
  echo -e "ProCep is Backdoor generator but his big advantage is that he encrypts the backdoor 2 tines."
  echo -e "The user will be able to choose the first encryption the second one will be RSA."
  echo -e "Strong and powerfull ProCep uses Ceph as the encryptor and Prophet to generate the backdoor."
  echo -e "Both tool were coded by the same guy, Ghosty from DeaDHackS."
  read -p "Press any keys to continue ..."
  procep
fi






















































































