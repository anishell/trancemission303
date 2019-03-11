#!/bin/bash

##  █████╗ ███╗   ██╗██╗      ███████╗██╗  ██╗███████╗██╗     ██╗
## ██╔══██╗████╗  ██║██║      ██╔════╝██║  ██║██╔════╝██║     ██║
## ███████║██╔██╗ ██║██║█████╗███████╗███████║█████╗  ██║     ██║
## ██╔══██║██║╚██╗██║██║╚════╝╚════██║██╔══██║██╔══╝  ██║     ██║
## ██║  ██║██║ ╚████║██║      ███████║██║  ██║███████╗███████╗███████╗
## ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝      ╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
## Author: ani-shell		        Email: ani.shell@protonmail.ch

#INSTALLER SCRIPT FOR TRANCEMISSION303..: SCYBR314

	LIGHTBLUE='\033[1;94m'
	MAGENTA='\033[1;35m'
	WHITE='\033[46;0m'
	YELLOW='\033[1;33m'
	RED='\033[0;31m'
	GREEN='\033[1;32m'
	BOLD=$(tput bold)
	NOBOLD=$(tput sgr0)
	SCRIPT=`realpath -s $0`
	SCRIPTPATH=`dirname $SCRIPT`
	OS=$(awk '/DISTRIB_ID=/' /etc/*-release | sed 's/DISTRIB_ID=//' | tr '[:upper:]' '[:lower:]')
	NUMBEROFCORES=$(grep -c ^processor /proc/cpuinfo)

function ascii {
	if [[ $EUID -ne 0 ]]; then
	clear
	echo -e "\e[37m
	Ɛ    0    Ɛ    u    0    ᴉ    s    S    ᴉ    W    S    u    ∀    ɹ    ┴
	                                    4
      ▄▄▄       ██▀███  ▄████▄  ▒█████   ██▓     ██▓ ███▄    █  █    ██▒██   ██▒
    ▒████▄    ▓██ ▒ ██▒██▀ ▀█ ▒██▒  ██▒▓██▒    ▓██▒ ██ ▀█   █  ██  ▓██▒▒ █ █ ▒░
     ▒██  ▀█▄  ▓██ ░▄█ ▒▓█    ▄▒██░  ██▒▒██░    ▒██▒▓██  ▀█ ██▒▓██  ▒██░░  █   ░
     \e[34m░██▄▄▄▄██ ▒██▀▀█▄ ▒▓▓▄ ▄██▒██   ██░▒██░    ░██░▓██▒  ▐▌██▒▓▓█  ░██░░ █ █ ▒
      ▓█   ▓██▒░██▓ ▒██▒ ▓███▀ ░ ████▓▒░░██████▒░██░▒██░   ▓██░▒▒█████▓▒██▒ ▒██▒
      ▒▒   ▓▒█░░ ▒▓ ░▒▓░ ░▒ ▒  ░ ▒░▒░▒░ ░ ▒░▓  ░░▓  ░ ▒░   ▒ ▒ ░▒▓▒ ▒ ▒▒▒ ░ ░▓ ░
       ▒   ▒▒ ░  ░▒ ░ ▒░ ░  ▒    ░ ▒ ▒░ ░ ░ ▒  ░ ▒ ░░ ░░   ░ ▒░░░▒░ ░ ░░░   ░▒ ░
       ░   ▒     ░░   ░░       ░ ░ ░ ▒    ░ ░    ▒ ░   ░   ░ ░  ░░░ ░ ░ ░    ░
           ░  ░   ░    ░ ░         ░ ░      ░  ░ ░           ░    ░     ░    ░
                       ░\033[m


	${WHITE}${NOBOLD}
(òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${LIGHTBLUE}WELCOME TO TRANSMISSION303 FOR ${OS^^} . INSTALLER...${MAGENTA}${USER^^}\033[m\033[m
	"
else
	clear
	echo -e "\e[37m
	Ɛ    0    Ɛ    u    0    ᴉ    s    S    ᴉ    W    S    u    ∀    ɹ    ┴
	                                    4
      ▄▄▄       ██▀███  ▄████▄  ▒█████   ██▓     ██▓ ███▄    █  █    ██▒██   ██▒
    ▒████▄    ▓██ ▒ ██▒██▀  ▀█ ▒██▒  ██▒▓██▒    ▓██▒ ██ ▀█   █  ██  ▓██▒▒ █ █ ▒░
     ▒██  ▀█▄  ▓██ ░▄█ ▒▓█    ▄▒██░  ██▒▒██░    ▒██▒▓██  ▀█ ██▒▓██  ▒██░░  █   ░
     \e[34m░██▄▄▄▄██ ▒██▀▀█▄ ▒▓▓▄ ▄██▒██   ██░▒██░    ░██░▓██▒  ▐▌██▒▓▓█  ░██░░ █ █ ▒
      ▓█   ▓██▒░██▓ ▒██▒ ▓███▀ ░ ████▓▒░░██████▒░██░▒██░   ▓██░▒▒█████▓▒██▒ ▒██▒
      ▒▒   ▓▒█░░ ▒▓ ░▒▓░ ░▒ ▒  ░ ▒░▒░▒░ ░ ▒░▓  ░░▓  ░ ▒░   ▒ ▒ ░▒▓▒ ▒ ▒▒▒ ░ ░▓ ░
       ▒   ▒▒ ░  ░▒ ░ ▒░ ░  ▒    ░ ▒ ▒░ ░ ░ ▒  ░ ▒ ░░ ░░   ░ ▒░░░▒░ ░ ░░░   ░▒ ░
       ░   ▒     ░░   ░░       ░ ░ ░ ▒    ░ ░    ▒ ░   ░   ░ ░  ░░░ ░ ░ ░    ░
           ░  ░   ░    ░ ░         ░ ░      ░  ░ ░           ░    ░     ░    ░
                       ░\033[m
${WHITE}${NOBOLD} d[ o_0 ]b${LIGHTBLUE} - ${WHITE}YOU ARE USING ${BOLD}${RED} ROOT \033[m
(òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${LIGHTBLUE}RUN SCRIPT WITHOUT ROOT.\033[m
${BOLD}
${WHITE}[${MAGENTA}SHOUTOUTS${WHITE}]
Arya Rawr - ZaVieR - Rican - Menace - Guilty - Lady Izzy
M. Fryberger - Connie - Negro - Jazzy - Evie
${LIGHTBLUE}...and a special THANK YOU for choosing t303.. ENJOY!



\033[m"
exit 1
fi
}
function useallcores {
	echo -e '\033]2;Makepkg Cores\007'
		case ${NUMBEROFCORES} in
			16)

			echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}CHANGING MAKEPKG CORES${WHITE}${BOLD}...${LIGHTBLUE}${NUMBEROFCORES}${WHITE}"
				sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j17"/g' /etc/makepkg.conf
			echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}CHANGING COMPRESSION SETTINGS${WHITE}${BOLD}...${LIGHTBLUE}${NUBEROFCORES}${WHITE}"
		  	sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 16 -z -)/g' /etc/makepkg.conf
		  ;;


			8)
			echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}CHANGING MAKEPKG CORES${WHITE}${BOLD}...${LIGHTBLUE}${NUMBEROFCORES}${WHITE}"
				sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j9"/g' /etc/makepkg.conf
			echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}CHANGING COMPRESSION SETTINGS${WHITE}${BOLD}...${LIGHTBLUE}${NUBEROFCORES}${WHITE}"
		  	sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 8 -z -)/g' /etc/makepkg.conf
			;;
			6)
			echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}CHANGING MAKEPKG CORES${WHITE}${BOLD}...${LIGHTBLUE}${NUMBEROFCORES}${WHITE}"
				sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j7"/g' /etc/makepkg.conf
			echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}CHANGING COMPRESSION SETTINGS${WHITE}${BOLD}...${LIGHTBLUE}${NUBEROFCORES}${WHITE}"
	 			sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 6 -z -)/g' /etc/makepkg.conf
			;;
			4)
			echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}CHANGING MAKEPKG CORES${WHITE}${BOLD}...${LIGHTBLUE}${NUMBEROFCORES}${WHITE}"
				sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j5"/g' /etc/makepkg.conf
			echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}CHANGING COMPRESSION SETTINGS${WHITE}${BOLD}...${LIGHTBLUE}${NUBEROFCORES}${WHITE}"
			  sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 4 -z -)/g' /etc/makepkg.conf
			;;
			2)
			echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}CHANGING MAKEPKG CORES${WHITE}${BOLD}...${LIGHTBLUE}${NUMBEROFCORES}${WHITE}"
				sudo sed -i 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j3"/g' /etc/makepkg.conf
			echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}CHANGING COMPRESSION SETTINGS${WHITE}${BOLD}...${LIGHTBLUE}${NUBEROFCORES}${WHITE}"
				sudo sed -i 's/COMPRESSXZ=(xz -c -z -)/COMPRESSXZ=(xz -c -T 2 -z -)/g' /etc/makepkg.conf
			;;
			*)
			echo -e "${WHITE}${NOBOLD} (⋟x⋞)${LIGHTBLUE}_${WHITE}xXx ${BOLD}${LIGHTBLUE}CAN NOT DETERMINE CORES...${GREEN}ERROR\033[m"  ;;
		esac
			echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${LIGHTBLUE}${NUMBEROFCORES} ARE BEING USED TO MAKEPKGS...${GREEN}COMPLETED\033[m\033[m"
	}
function updatemirrors {
	echo -e '\033]2;Updating Mirrors\007'
	sh t303.sh -k
		echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}CONFIGURING FASTEST MIRRORS${WHITE}${BOLD}...${LIGHTBLUE}COMPLETE${WHITE}"
}
function audio {
	echo -e '\033]2;Audio System\007'
	echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}SYSTEM AUDIO PACKAGES${WHITE}"
		sh t303.sh -s pulseaudio
		sh t303.sh -s pulseaudio-alsa
		sh t303.sh -s pavucontrol
		sh t303.sh -s alsa-utils
		sh t303.sh -s alsa-lib
		sh t303.sh -s alsa-firmware
		sh t303.sh -s gstreamer
		sh t303.sh -s gst-plugins-good
		sh t303.sh -s volumeicon
		sh t303.sh -s playerctl
		sh t303.sh -s gst-plugins-ugly
		sh t303.sh -s gst-plugins-base
		sh t303.sh -s gst-plugins-bad
		sh t303.sh -s alsa-plugins
}
function bluetooth {
	echo -e '\033]2;Bluetooth System\007'
echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING ${WHITE}${BOLD}...${LIGHTBLUE}BLUETOOTH SYSTEM${WHITE}"
	sh t303.sh -s pulseaudio-bluetooth
	sh t303.sh -s bluez
	sh t303.sh -s bluez-libs
	sh t303.sh -s bluez-utils
	sh t303.sh -s bluez-firmware
	sh t303.sh -s blueman
	sh t303.sh -r bluetooth

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

#autoenable bluetooth
sudo sed -i 's/'#AutoEnable=false'/'AutoEnable=true'/g' /etc/bluetooth/main.conf


}
function printers {
	echo -e '\033]2;Printers\007'
echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING ${WHITE}${BOLD}...${LIGHTBLUE}PRINTER SYSTEM${WHITE}"
	sh t303.sh -s cups
	sh t303.sh -s cups-pdf
	sh t303.sh -s ghostscript
	sh t303.sh -s gtk3-print-backends
	sh t303.sh -s libcups
	sh t303.sh -s hplip
	sh t303.sh -s system-config-printer
 	sh t303.sh -s gsfonts
	sh t303.sh -s gutenprint

sudo systemctl enable org.cups.cupsd.service

}
function laptopbatterymanager {
	echo -e '\033]2;Laptop Battery\007'
echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING ${WHITE}${BOLD}...${LIGHTBLUE}LAPTOP BATTERY UTILITY${WHITE}"
if pacman -Qi tlp&> /dev/null; then
		echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${MAGENTA}TLP ${LIGHTBLUE}INSTALLED\033[m"
else
	sh t303.sh -s tlp

	sudo systemctl enable tlp.service
	sudo systemctl start tlp-sleep.service
fi




}
function desktopenvironment {
	echo -e '\033]2;Desktop Environment\007'
	echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING ${WHITE}${BOLD}...${LIGHTBLUE}DESKTOP ENVIRONMENT${WHITE}"

		sh t303.sh -a xfce4-appfinder
		sh t303.sh -a xfce4-session
		sh t303.sh -a xfce4-settings
		sh t303.sh -s xfce4-terminal
		sh t303.sh -a xfce4-notifyd
		sh t303.sh -s libxfce4ui
		sh t303.sh -s exo
		sh t303.sh -s garcon
		sh t303.sh -s gtk-xfce-engine
		sh t303.sh -a thunar-archive-plugin
		sh t303.sh -s thunar-media-tags-plugin
		sh t303.sh -s tumbler
		sh t303.sh -s thunar-volman
		sh t303.sh -s xfwm4
		sh t303.sh -s xfdesktop
		sh t303.sh -s ttf-droid
		sh t303.sh -s ttf-roboto
		sh t303.sh -a powerline-fonts

	if [ ! -d "/usr/share/backgrounds/trancemission303" ]; then
	sudo mkdir -p /usr/share/backgrounds/trancemission303
	sudo cp -b ${SCRIPTPATH}/backgrounds/greygrunge.jpg /usr/share/backgrounds/trancemission303/
	fi


#XCONF
	echo -e "
${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}CONFIGURING ${WHITE}${BOLD}...${LIGHTBLUE}DESKTOP${WHITE}"
	rm -f ~/.cache/sessions/xfce4-session-*y
	xfconf-query -n -c xfce4-session -p /general/SaveOnExit -t bool -s false
	echo -e "${LIGHTBLUE}${BOLD}	:: ${WHITE}${BOLD}SESSION ${YELLOW}>>${GREEN} CONFIGURED\033[m"
	xfconf-query -c xfce4-notifyd -p /notify-location -n -t  int -s 1
	xfconf-query -c xfce4-notifyd -p /expire-timeout -n -t int -s 3
	xfconf-query -c xfce4-notifyd -p /do-fadeout -n -t bool -s true
	xfconf-query -c xfce4-notifyd -p /do-slideout -n -t bool -s true
	xfconf-query -c xfce4-notifyd -p /applications/muted_applications -n -t string -s ["xfce4-power-manager"] -a
	xfconf-query -c xfce4-notifyd -p /do-not-disturb -n -t bool -s false
	xfconf-query -c xfce4-notifyd -p /initial-opacity -n -t double -s "0.800000"
	xfconf-query -c xfce4-notifyd -p /log-level -n -t int -s 1
	xfconf-query -c xfce4-notifyd -p /log-level-apps -n -t int -s 1
	xfconf-query -c xfce4-notifyd -p /primary-monitor -n -t int -s 0
	xfconf-query -c xfce4-notifyd -p /theme -n -t string -s "Default"
	echo -e "${LIGHTBLUE}${BOLD}	:: ${WHITE}${BOLD}NOTIFICATIONS ${YELLOW}>>${GREEN} CONFIGURED\033[m"
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/handle-brightness-keys -n -t bool -s true
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/show-tray-icon -n -t bool -s true
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/critical-power-action -n -t int -s 4
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/critical-power-level -n -t int -s 20
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/brightness-switch -n -t int -s 0
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/general-notification -n -t bool -s true
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/brightness-switch-restore-on-exit -n -t int -s 1
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/handle-brightness-keys -n -t bool -s true
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/hibernate-button-action -n -t int -s 2
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/show-tray-icon -n -t bool -s true
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/power-button-action -n -t int -s 4
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/sleep-button-action -n -t int -s 1
	echo -e "${LIGHTBLUE}${BOLD}	:: ${WHITE}${BOLD}POWER MANAGER ${YELLOW}>>${GREEN} CONFIGURED\033[m"
	xfconf-query -c xfce4-keyboard-shortcuts --property "/commands/custom/XF86AudioLowerVolume" --create --type string --set "amixer set Master 2%-"
	xfconf-query -c xfce4-keyboard-shortcuts --property "/commands/custom/XF86AudioRaiseVolume" --create --type string --set "amixer set Master 2%+"
	xfconf-query -c xfce4-keyboard-shortcuts --property "/commands/custom/XF86AudioMute" --create --type string --set "amixer set Master toggle"
	xfconf-query -c keyboards --property "/Default/Numlock" -n -t bool -s true
	echo -e "${LIGHTBLUE}${BOLD}	:: ${WHITE}${BOLD}KEYBOARD HOTKEYS ${YELLOW}>>${GREEN} CONFIGURED\033[m"
	xfconf-query -c xfwm4 -p /general/show_dock_shadow -n -t bool -s false
	xfconf-query -c xfwm4 -p /general/frame_opacity -n -t int -s 80
	xfconf-query -c xfwm4 -p /general/inactive_opacity -n -t int -s 70
	xfconf-query -c xfwm4 -p /general/move_opacity -n -t int -s 90
	xfconf-query -c xfwm4 -p /general/resize_opacity -n -t int -s 90
	xfconf-query -c xfwm4 -p /general/popup_opacity -n -t int -s 90
	xfconf-query -c xfwm4 -p /general/theme -n -t string -s "Abrus"
	echo -e "${LIGHTBLUE}${BOLD}	:: ${WHITE}${BOLD}XFWM4 ${YELLOW}>>${GREEN} CONFIGURED\033[m"
	xfconf-query -c xfce4-desktop -p /desktop-icons/style -n -t int -s 0
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-path -s "/usr/share/backgrounds/trancemission303/trancemission303.jpg" -t string -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-show -s "true" -t bool -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor0/image-style -s 0 -t int -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/image-path -s "/usr/share/backgrounds/trancemission303/trancemission303.jpg" -t string -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/image-style -s 0 -t int -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor1/image-show -s "true" -t bool -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor2/image-path -s "/usr/share/backgrounds/trancemission303/trancemission303.jpg" -t string -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor2/image-show -s "true" -t bool -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor2/image-style -s 0 -t int -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor3/image-path -s "/usr/share/backgrounds/trancemission303/trancemission303.jpg" -t string -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor3/image-show -s "true" -t bool -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor3/image-style -s 0 -t int -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor4/image-path -s "/usr/share/backgrounds/trancemission303/trancemission303.jpg" -t string -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor4/image-show -s "true" -t bool -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor4/image-style -s 0 -t int -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor5/image-path -s "/usr/share/backgrounds/trancemission303/trancemission303.jpg" -t string -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor5/image-show -s "true" -t bool -n
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitor5/image-style -s 0 -t int -n
	echo -e "${LIGHTBLUE}${BOLD}	:: ${WHITE}${BOLD}WALLPAPERS ${YELLOW}>>${GREEN} CONFIGURED\033[m"

#COMPIZ
	if pacman -Qi glxinfo &> /dev/null; then
	echo -e "${WHITE}${NOBOLD} (⋟x⋞)${LIGHTBLUE}_${WHITE}xXx ${BOLD}${LIGHTBLUE}${1}...${GREEN}found\033[m"
	sudo pacman -Rncs glxinfo --noconfirm
	fi
	echo -e "
${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}COMPIZ${WHITE}"
	sh t303.sh -s libappindicator-gtk3
	sh t303.sh -a compiz-core
	sh t303.sh -a compiz-bcop
	sh t303.sh -a libcompizconfig
	sh t303.sh -a compizconfig-python
	sh t303.sh -a ccsm
	sh t303.sh -a compiz-fusion-plugins-main
	sh t303.sh -a compiz-fusion-plugins-extra
	sh t303.sh -a compiz-fusion-plugins-experimental
	sh t303.sh -a emerald
	sh t303.sh -a fusion-icon

	[ ! -d $HOME"/.config/compiz/compizconfig" ] && mkdir -p $HOME"/.config/compiz/compizconfig" && echo -e " ${WHITE}${NOBOLD}(òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${LIGHTBLUE}COMPIZ RELOADED...${GREEN}CREATED\033[m"
	cp -b ${SCRIPTPATH}/configurations/trancemisson303.profile ~/.config/compiz/compizconfig/Default.ini


	if [ ! -f "~/.config/autostart/fusion-icon.desktop" ]; then
	[ -d ~/.config/autostart ] || mkdir -p ~/.config/autostart
	touch ~/.config/autostart/fusion-icon.desktop
	echo '[Desktop Entry]' | tee -a ~/.config/autostart/fusion-icon.desktop > /dev/null
	echo 'Encoding=UTF-8' | tee -a ~/.config/autostart/fusion-icon.desktop > /dev/null
	echo 'Version=0.9.4' | tee -a ~/.config/autostart/fusion-icon.desktop > /dev/null
	echo 'Type=Application' | tee -a ~/.config/autostart/fusion-icon.desktop > /dev/null
	echo 'Name=Fusion-Icon' | tee -a ~/.config/autostart/fusion-icon.desktop > /dev/null
	echo 'Comment=Custom effects' | tee -a ~/.config/autostart/fusion-icon.desktop > /dev/null
	echo 'Exec=fusion-icon' | tee -a ~/.config/autostart/fusion-icon.desktop > /dev/null
	echo 'OnlyShowIn=XFCE;' | tee -a ~/.config/autostart/fusion-icon.desktop > /dev/null
	echo 'StartupNotify=false' | tee -a ~/.config/autostart/fusion-icon.desktop > /dev/null
	echo 'Terminal=false' | tee -a ~/.config/autostart/fusion-icon.desktop > /dev/null
	echo 'Hidden=false' | tee -a ~/.config/autostart/fusion-icon.desktop > /dev/null
	echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${MAGENTA}FUSION ICON }AUTOSTART...${GREEN}CREATED\033[m\033[m"
fi

#CAIRO-DOCK
	echo -e "
${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}CAIRO-DOCK${WHITE}"
	sh t303.sh -s cairo-dock
	sh t303.sh -s cairo-dock-plug-ins
	echo -e "
${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}CAIRO-DOCK THEMES${WHITE}"
	tar xf ${SCRIPTPATH}"/themes/cairo-dock/t303.tar.gz" -C ~/.config/cairo-dock/themes

#EMERALD
	echo -e "
${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}EMERALD THEMES${WHITE}"
	[ -d $HOME"/.emerald" ] || mkdir -p $HOME"/.emerald"
	[ -d $HOME"/.emerald/theme" ] || mkdir -p $HOME"/.emerald/theme"
	[ -d $HOME"/.emerald/themes" ] || mkdir -p $HOME"/.emerald/themes"
	tar xf ${SCRIPTPATH}/themes/emerald/neutroniumdeepblack.tar.gz -C ~/.emerald/theme/
	[ -d $HOME"/.emerald/themes/neutronium_deep_black" ] || mkdir -p $HOME"/.emerald/themes/neutronium_deep_black" && echo -e "${LIGHTBLUE}${BOLD}	:: ${WHITE}${BOLD}EMERALD PATH ${YELLOW}>>${GREEN} CREATED\033[m"
	tar xf ${SCRIPTPATH}/themes/emerald/neutroniumdeepblack.tar.gz -C ~/.emerald/themes/neutronium_deep_black/
	echo -e "${LIGHTBLUE}${BOLD}	:: ${WHITE}${BOLD}EMERALD THEMES ${YELLOW}>>${GREEN} INSTALLED\033[m"


	}
function displaymanager {
	echo -e '\033]2;Display Manager\007'
	echo -e "
${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}DISPLAY MANAGER${WHITE}"

		if pacman -Qi sddm &> /dev/null; then
    	echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${MAGENTA}SDDM ${LIGHTBLUE}INSTALLED\033[m"
			sh t303.sh -a sddm-config-editor-git
		else
			echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}SDDM${WHITE}"
			sh t303.sh -s sddm
			sh t303.sh -a sddm-config-editor-git
			sudo systemctl enable sddm.service -f
		fi

#SDDM THEME
	sh t303.sh -s gst-libav
	sh t303.sh -s phonon-qt5-gstreamer
	sh t303.sh -s gst-plugins-good
	sh t303.sh -s qt5-quickcontrols
	sh t303.sh -s qt5-graphicaleffects

	echo -e "
${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}SDDM THEMES${WHITE}"
	[ ! -d "/usr/share/sddm/themes/aerial-sddm-theme" ] && git clone https://github.com/3ximus/aerial-sddm-theme.git && sudo mv aerial-sddm-theme /usr/share/sddm/themes

	if [ ! -f /etc/sddm.conf ]; then
    echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}CONFIGURING${WHITE}${BOLD}...${LIGHTBLUE}SDDM${WHITE}"
    sudo touch /etc/sddm.conf
    echo '## Generated by ani.shell for SDDM' | sudo tee -a /etc/sddm.conf > /dev/null
    echo '[General]' | sudo tee -a /etc/sddm.conf > /dev/null
    echo 'Numlock=on' | sudo tee -a /etc/sddm.conf > /dev/null
    echo '' | sudo tee -a /etc/sddm.conf > /dev/null
    echo '[Theme]' | sudo tee -a /etc/sddm.conf > /dev/null
    echo 'Current=aerial-sddm-theme' | sudo tee -a /etc/sddm.conf > /dev/null
    echo 'CursorTheme=breeze_cursors' | sudo tee -a /etc/sddm.conf > /dev/null
    echo 'EnableAvatars=true' | sudo tee -a /etc/sddm.conf > /dev/null
	else
    sudo sed -i 's/'Current=breeze'/'Current=aerial-sddm-theme'/g' /etc/sddm.conf
    sudo sed -i 's/'Numlock=none'/'Numlock=on'/g' /etc/sddm.conf
	fi
	echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${LIGHTBLUE}SDDM CONFIGURATION...${GREEN}CREATED\033[m\033[m"
	#sudo tar xf ${SCRIPTPATH}/themes/sddm/t303..tar.gz -C /usr/share/sddm/themes/
	#	sudo tar xf ${SCRIPTPATH}/themes/sddm/scybr314-piracy.tar.gz -C /usr/share/sddm/themes/

	echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${LIGHTBLUE}SDDM THEMES...${GREEN}INSTALLED\033[m\033[m"

}
function ltskernel {
echo -e '\033]2;LTS Kernel\007'
	echo -e "
${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}LTS KERNEL${WHITE}"

sh t303.sh -a wd719x-firmware
sh t303.sh -a aic94xx-firmware
	if pacman -Qi linux-lts&> /dev/null; then
		#sudo mkinitcpio -p linux-lts
		echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${MAGENTA}LTS-KERNEL ${LIGHTBLUE}INSTALLED\033[m"
	else
		sh t303.sh -s linux-lts
		sh t303.sh -s linux-lts-headers
		sudo mkinitcpio -p linux-lts
	fi
}
function multimedia {
	echo -e '\033]2;Multimedia\007'
	echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}MULTIMEDIA PACKAGES${WHITE}"
	sh t303.sh -s kodi
	sh t303.sh -s lmms
	sh t303.sh -s guvcview
	sh t303.sh -s ardour
	sh t303.sh -s k3b
	sh t303.sh -s openshot
	sh t303.sh -s simplescreenrecorder
	sh t303.sh -s vlc
	sh t303.sh -s cdrtools
	sh t303.sh -s cdrdao
	sh t303.sh -s dvd+rw-tools
	sh t303.sh -s vcdimager
	sh t303.sh -s emovix
	sh t303.sh -s transcode
}
function graphics {
	echo -e '\033]2;Graphics\007'
	echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}GRAPHICAL PACKAGES${WHITE}"
	sh t303.sh -s darktable
	sh t303.sh -s gimp
	sh t303.sh -s gpick
	sh t303.sh -s peek
	sh t303.sh -s inkscape
	sh t303.sh -s shotwell
	sh t303.sh -s gnome-font-viewer
	sh t303.sh -s nomacs
}
function internet {
	echo -e '\033]2;Internet\007'
echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}INTERNET PACKAGES${WHITE}"

	if pacman -Qi tor-browser-en &> /dev/null; then
    echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${MAGENTA}TOR BROWSER ${LIGHTBLUE}INSTALLED...${GREEN}YES\033[m"
	else
	echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}TOR${WHITE}"
 	gpg2 --recv-key D1483FA6C3C07136
	gpg2 --recv-key EB774491D9FF06E2
	sh t303.sh -a tor-browser-en
	fi

	sh t303.sh -s tor
	sh t303.sh -s torsocks
	sh t303.sh -a proxychains
	sh t303.sh -a dropbox
	sh t303.sh -s filezilla
	sh t303.sh -a skypeforlinux-stable-bin
	sh t303.sh -s firefox
	sh t303.sh -a tixati
	sh t303.sh -a hexchat
	sh t303.sh -a nicotine-plus-git
	sh t303.sh -r tor
}
function systems {
	echo -e '\033]2;Systems\007'
	echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}SYSTEM PACKAGES${WHITE}"
	sh t303.sh -a fluxgui
	sh t303.sh -s gparted
	sh t303.sh -s sharutils
	sh t303.sh -s parted
	sh t303.sh -s sysstat
	sh t303.sh -s baobab
	sh t303.sh -a mintstick
	sh t303.sh -s virtualbox
	sh t303.sh -s virtualbox-guest-utils
	sh t303.sh -s virtualbox-guest-iso
	sh t303.sh -a virtualbox-ext-oracle
	if [ ! -f "/etc/modules-load.d/virtualbox-vboxdrv.conf" ]; then
	sudo tee /etc/modules-load.d/virtualbox-vboxdrv.conf <<< "vboxdrv"
	fi
	sh t303.sh -s onboard
	sh t303.sh -s catfish
	sh t303.sh -s clamtk
	sh t303.sh -s spectacle
	sh t303.sh -s bleachbit
	sh t303.sh -a google-earth-pro
	sh t303.sh -s dconf-editor
	sh t303.sh -s grsync
	sh t303.sh -s numlockx
	sh t303.sh -s spectacle
#	sh t303.sh -a oomox-git
	sh t303.sh -a pamac-aur
	sh t303.sh -a grub-customizer
	sh t303.sh -a menulibre


	if pacman -Qi ufw &> /dev/null; then
	echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${MAGENTA}FIREWALL ${LIGHTBLUE}CONFIGURED\033[m"
	else
	echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}CONFIGURING${WHITE}${BOLD}...${LIGHTBLUE}FIREWALL${WHITE}"
	sh t303.sh -s gufw
	sh t303.sh -r ufw
	sudo ufw default allow outgoing
	sudo ufw default deny incoming
	sudo ufw allow ssh
	fi
}
function filesystems {
	echo -e '\033]2;File Systems\007'
	echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}FILE SYSTEMS${WHITE}"
	sh t303.sh -s ntfs-3g
	sh t303.sh -s gvfs
	sh t303.sh -s gvfs-mtp
	
	echo -e "
${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}COMPRESSION SYSTEMS${WHITE}"

	sh t303.sh -s file-roller
	sh t303.sh -s p7zip
	sh t303.sh -s zip
	sh t303.sh -s unzip
	sh t303.sh -s unrar
}
function education {
	echo -e '\033]2;Education\007'
	echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}EDUCATION PACKAGES${WHITE}"

	sh t303.sh -s klavaro
}
function zsh {
echo -e '\033]2;ZSH\007'
	if [ "${WHATSHELL}" != "/bin/zsh" ]; then
	echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}SHELL IS ZSH.\033[m"

if [ ! -f "/home/scratch/.oh-my-zsh" ]; then
	echo -e " ${LIGHTBLUE}${BOLD}==>${WHITE} ${BOLD}OH-MY-ZSH...${LIGHTBLUE}INSTALLED\033[m"
exitscript
	else

		sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
			echo -e " ${LIGHTBLUE}${BOLD}==>${WHITE} ${BOLD}OH-MY-ZSH...${LIGHTBLUE}INSTALLED\033[m"
			sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' /home/$USER/.zshrc
			echo -e " ${LIGHTBLUE}${BOLD}==>${WHITE} ${BOLD}ZSH THEME...${LIGHTBLUE}CHANGED\033[m"
			chsh $USER -s /bin/zsh
		exitscript
fi



	else
	sh t303.sh -s zsh
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	echo -e " ${LIGHTBLUE}${BOLD}==>${WHITE} ${BOLD}OH-MY-ZSH...${LIGHTBLUE}INSTALLED\033[m"
	sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' /home/$USER/.zshrc
	echo -e " ${LIGHTBLUE}${BOLD}==>${WHITE} ${BOLD}ZSH THEME...${LIGHTBLUE}CHANGED\033[m"
	chsh $USER -s /bin/zsh
	echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}SHELL CHANGED TO ZSH.\033[m"

	fi
}
function exitscript {
	echo -e "\e[37m
	Ɛ    0    Ɛ    u    0    ᴉ    s    S    ᴉ    W    S    u    ∀    ɹ    ┴
	                                    4
      ▄▄▄       ██▀███  ▄████▄  ▒█████   ██▓     ██▓ ███▄    █  █    ██▒██   ██▒
     ▒████▄    ▓██ ▒ ██▒██▀  ▀█ ▒██▒  ██▒▓██▒    ▓██▒ ██ ▀█   █  ██  ▓██▒▒ █ █ ▒░
     ▒██  ▀█▄  ▓██ ░▄█ ▒▓█    ▄▒██░  ██▒▒██░    ▒██▒▓██  ▀█ ██▒▓██  ▒██░░  █   ░
     \e[34m░██▄▄▄▄██ ▒██▀▀█▄ ▒▓▓▄ ▄██▒██   ██░▒██░    ░██░▓██▒  ▐▌██▒▓▓█  ░██░░ █ █ ▒
      ▓█   ▓██▒░██▓ ▒██▒ ▓███▀ ░ ████▓▒░░██████▒░██░▒██░   ▓██░▒▒█████▓▒██▒ ▒██▒
      ▒▒   ▓▒█░░ ▒▓ ░▒▓░ ░▒ ▒  ░ ▒░▒░▒░ ░ ▒░▓  ░░▓  ░ ▒░   ▒ ▒ ░▒▓▒ ▒ ▒▒▒ ░ ░▓ ░
       ▒   ▒▒ ░  ░▒ ░ ▒░ ░  ▒    ░ ▒ ▒░ ░ ░ ▒  ░ ▒ ░░ ░░   ░ ▒░░░▒░ ░ ░░░   ░▒ ░
       ░   ▒     ░░   ░░       ░ ░ ░ ▒    ░ ░    ▒ ░   ░   ░ ░  ░░░ ░ ░ ░    ░
           ░  ░   ░    ░ ░         ░ ░      ░  ░ ░           ░    ░     ░    ░
                       ░\033[m


	${WHITE}${NOBOLD}
(òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${LIGHTBLUE}THANKS FOR USING TRANSMISSION303

\033[m"
exit 1
}
function accessories {
	echo -e '\033]2;Accessories\007'
	echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}INSTALLING ${WHITE}${BOLD}...${LIGHTBLUE}ACCESSORIES${WHITE}"

	sh t303.sh -s gnome-disk-utility
	sh t303.sh -s arcolinux-conky-collection-git
	sh t303.sh -a conky-lua-archers
}
useallcores
updatemirrors
ascii
filesystems
bluetooth
audio
printers
laptopbatterymanager
desktopenvironment
displaymanager
ltskernel
multimedia
accessories
graphics
internet
education
systems
zsh
