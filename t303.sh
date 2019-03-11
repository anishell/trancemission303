#!/bin/bash

#INSTALLER SCRIPT FOR ARCH
#THIS SCRIPT USES PACMAN, PACKER, PACAUR OR YAOURT TO INSTALL PACKAGES

#USAGE
#TO UPDATE THE ARCH KEYRING		sh t303.sh -k
#TO USE PACMAN				sh t303.sh -s [package]
#TO USE AUR INSTALLERS			sh t303.sh -a [package]
#TO START SERVICE			sh t303.sh -r [service]
#TO REMOVE A PACKAGE			sh t303.sh -x [package]
#....blah blah blah ....read the script. don't take chances.

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



function ascii {
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
"
}


function refresharchkeys {

#SYNC KEYRING
		echo -e "${WHITE}${BOLD}[${LIGHTBLUE}REFRESHING PGP KEYS${WHITE}${BOLD}]\033[m"
			sudo pacman-key --populate archlinux
		echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${LIGHTBLUE}KEYS...${GREEN}REFRESHED\033[m\033[m"

#UPGRADE ARCH
		echo -e "${WHITE}${BOLD}[${LIGHTBLUE}SYSTEM UPGRADE${WHITE}${BOLD}]\033[m"
			sudo pacman -Syyu
		ascii
		echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${LIGHTBLUE}SYSTEM UPGRADED...${GREEN}COMPLETE\033[m\033[m"
}

function checkifinstalled {
#CHECK IF A PACKAGE IS INSTALLED ON THE SYSTEM
		if pacman -Qi ${OPTARG}&> /dev/null; then
    			#echo -e "${WHITE}${BOLD}[${WHITE}${BOLD}]\033[m"
    			echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${MAGENTA}${OPTARG^^} ${LIGHTBLUE}INSTALLED\033[m"
		else
			echo -e "${WHITE}${BOLD}[${LIGHTBLUE}${OPTARG^^}${WHITE}${BOLD}]\033[m"
			echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}NOT INSTALLED${MAGENTA} ${OPTARG^^} ${WHITE}${BOLD}...${RED}ERROR\033[m"
		fi
}

#COMMANDS START HERE =]
while getopts "a:x:s:c:r::k" opt; do
	case $opt in
		#SYNC KEYS & UPGRADE CACHE
			k)
				echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}${MAGENTA}UPDATING${WHITE}${BOLD}...${LIGHTBLUE}MIRRORS${WHITE}"
    			sudo reflector --verbose -l 50 -n 20 -p http --sort rate --save /etc/pacman.d/mirrorlist && sudo pacman -Syy
				echo -e "
${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${MAGENTA}MIRRORS ${LIGHTBLUE}UPDATED\033[m" ;;
		# USE PACMAN TO DO OUR INSTALLATION
			s)
				if pacman -Qi ${OPTARG}&> /dev/null; then
				 	echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${MAGENTA}${OPTARG^^} ${LIGHTBLUE}INSTALLED...${GREEN}YES\033[m"
				else
					echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}PACMAN ${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}${OPTARG^^}${WHITE}"
    						sudo pacman -S --noconfirm --needed ${OPTARG}
						checkifinstalled
				fi ;;

		#USE PACKER, PACAUR OR YAOURT TO INSTALL THE PACKAGES
			a)
				if pacman -Qi yay &> /dev/null; then
					if pacman -Qi ${OPTARG}&> /dev/null; then
						echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${MAGENTA}${OPTARG^^} ${LIGHTBLUE}INSTALLED...${GREEN}YES\033[m"
					else
						echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}YAY ${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}${OPTARG^^}${WHITE}"
						yay -S --noconfirm ${OPTARG}
						checkifinstalled
					fi
				elif pacman -Qi pacaur &> /dev/null; then
					echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}PACAUR ${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}${OPTARG^^}${WHITE}"
						pacaur -S --noconfirm --noedit ${OPTARG}
						checkifinstalled
				elif pacman -Qi packer &> /dev/null; then
					echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}PACKER ${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}${OPTARG^^}${WHITE}"
						packer -S --noconfirm --noedit ${OPTARG}
						checkifinstalled
					elif pacman -Qi trizen &> /dev/null; then
						echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}TRIZEN ${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}${OPTARG^^}${WHITE}"
							packer -S --noconfirm --noedit ${OPTARG}
							checkifinstalled
					elif pacman -Qi yaourt &> /dev/null; then
						echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}YAOURT ${MAGENTA}INSTALLING${WHITE}${BOLD}...${LIGHTBLUE}${OPTARG^^}${WHITE}"
						yaourt -S --noconfirm ${OPTARG}
						checkifinstalled
				fi ;;

								#REMOVE PACKAGES
			x)
			if pacman -Qi ${OPTARG}&> /dev/null; then
    			#echo -e "${WHITE}${BOLD}[${WHITE}${BOLD}]\033[m"
    			echo -e "${WHITE}${NOBOLD} (òÓ,)${LIGHTBLUE}_${WHITE}\,,/ ${BOLD}${MAGENTA}${OPTARG^^} ${LIGHTBLUE}UNINSTALLING\033[m"
    			sudo pacman -Rncs --noconfirm ${OPTARG}
		else
			#echo -e "${WHITE}${BOLD}[${LIGHTBLUE}${OPTARG^^}${WHITE}${BOLD}]\033[m"
			echo -e "${LIGHTBLUE}${BOLD}:: ${WHITE}${BOLD}NOT INSTALLED${MAGENTA} ${OPTARG^^} ${WHITE}${BOLD}...${GREEN}OKAY\033[m"
		fi


			;;

		#START AND ENABLE SYSTEM SERVICES
			r)
				sudo systemctl enable ${OPTARG}.service
				sudo systemctl start ${OPTARG}.service ;;

				c)
				ascii ;;


esac
done
