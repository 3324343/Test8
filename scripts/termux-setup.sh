#!/bin/bash

black="\033[0;30m"
red="\033[0;31m"
green="\033[0;32m"
yellow="\033[0;33m"
blue="\033[0;34m"
cyan="\033[0;36m"
white="\033[0;37m"
reset="\033[0m"

# Status
info="${cyan}[+]${reset}"
success="${green}[✓]${reset}"
error="${red}[!]${reset}"

cd $HOME
rm -rf ../usr/etc/motd
clear

install_dependencies() {
    echo -e "${info}${green}Installing required packages${reset}"
    sleep 2
    
    pkg update -y
    pkg upgrade -y
    pkg install wget -y 
    pkg install git -y
    git clone https://github.com/3324343/Test8/

   sleep 2
   wget https://raw.githubusercontent.com/3324343/Test8/refs/heads/main/scripts/startxfce4_termux.sh
   chmod +x startxfce4_termux.sh

packages=(
    x11-repo
    termux-x11-nightly
    xfce4
    xfce4-goodies
    git
    kvantum
    fastfetch
    cava
    audacious
    leafpad
    pavucontrol-qt
    synaptic
    firefox
    termux-x11-nightly
    pulseaudio
)


for package in "${packages[@]}"; do
    printf "${info}${green}Installing ${yellow}$package${green}...${reset}\n"
    if pkg install -y "$package"; then
        printf "${success}${yellow}$package ${green}installed successfully!${reset}\n"
    else
        printf "${error}${red}Failed to install ${yellow}$package. ${red}Exiting...${reset}\n"
        exit 1
    fi
done

printf "${success}${green}All packages installed successfully!${reset}\n"

}

install_dependencies

#!/bin/bash
repo=Test8

copy_themes() {
  cd $HOME 
  cd ${repo}/files
  cp -r .themes ~/
  sleep 1
  cd $HOME
}

copy_themes

copy_fonts() {
  cd $HOME
  cd ${repo}/files/
  cp -r .fonts ~/
  sleep 1
  cd $HOME
}

copy_fonts

copy_config() {
  cd $HOME
  rm -rf .config
  sleep 1
  cd $HOME
  cd ${repo}/files/
  cp -r .config
}

copy_config



