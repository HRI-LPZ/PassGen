#!/bin/bash
#El conocimiento es libre
#Codificado Por: t.me/Anonymous_Lpz

#ruta de pwgen y figlet
pwgen="/data/data/com.termux/files/usr/bin/pwgen"
figlet="/data/data/com.termux/files/usr/bin/figlet"
#Verifica si pwgen esta instalado y si no esta instalado procede a instalarlo
 if [[ $pwgen = $(which pwgen) ]]; then
    printf ""
 else
    termux-setup-storage
    echo -e "\e[1;32mInstalando pwgen\e[0m"
    sleep 1.8
    pkg install pwgen -y
 fi
#Verifica si figlet esta instalado y si no esta instalado procede a instalarlo
 if [[ $figlet = $(which figlet) ]]; then
    printf ""
 else
    echo -e "\e[1;32mInstalando figlet\e[0m"
    sleep 1.6
    pkg install figlet -y
 fi
echo $(clear)
#Banner
echo -e "\e[1;31m"
figlet PassGen
echo -e "\e[1;36m  Gᴇɴᴇʀᴀᴅᴏʀ ᴅᴇ ᴄᴏɴᴛʀᴀsᴇɴ̃ᴀs sᴇɢᴜʀᴀs."
echo ""
echo -ne "\e[1;32m<< ᴄᴜᴀɴᴛᴏs ᴄᴀʀᴀᴄᴛᴇʀᴇs? >> $ "
read caracteres
password=$(pwgen $caracteres 1)
echo -e "\e[1;32m$password"
echo "" >> PassGen.txt
echo "Fecha: $(date)" >> PassGen.txt
echo "Caracteres: $caracteres" >> PassGen.txt
echo "Contraseña: $password" >> PassGen.txt
echo "Generador: PassGen" >> PassGen.txt
echo "" >> PassGen.txt
echo -e "\e[1;31mʟᴀ ᴄᴏɴᴛʀᴀsᴇɴ̃ᴀ sᴇ ʜᴀ ɢᴜᴀʀᴅᴀᴅᴏ ᴇɴ ᴇʟ ᴀʀᴄʜɪᴠᴏ:\nPassGen.txt\e[0m"
