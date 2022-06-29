#!/bin/bash

#colores
cyan='\033[1;36m'
amarillo='\033[1;33m'
blanco='\033[1;37m'
verde='\033[1;32m'
lila='\033[1;35m'
rojo='\033[1;31m'

banner() {
echo -e "--------------------------------------------"
figlet -f slant Location | lolcat
echo -e "${verde}Made by ${blanco}WhBeatZ ${verde}& ${blanco}EdgarLuck  ${cyan}| ${rojo}v1.0 ${blanco}"
echo -e "--------------------------------------------"
}

hack() {
echo -e "aqui va el hack xd"
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
