#!/bin/bash
#El conocimiento es libre
#Codificado Por: t.me/HRI_VZ

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
echo -e "\e[1;36mGenerador de contraseñas seguras para tus redes sociales y cualquier plataforma que necesite estar protegida."
echo ""
echo -ne "\e[1;32m<< Cuantos caracteres >>  $ "
read caracteres
password=$(pwgen $caracteres 1)
echo -e "\e[1;33mGenerando contraseña ..."
sleep 1.5
echo
echo -e "\e[1;32m$password"
echo
echo "" >> PassGen.txt
echo "Fecha-Creación: $(date)" >> PassGen.txt
echo "Caracteres: $caracteres" >> PassGen.txt
echo "Contraseña: $password" >> PassGen.txt
echo "Generador: PassGen" >> PassGen.txt
echo "" >> PassGen.txt
echo -e "\e[1;31mLa contraseña se a guardado en el archivo \nPassGen.txt \n\e[1;30mPara ver contraseñas guardadas ejecute: \e[1;37mcat PassGen.txt"









