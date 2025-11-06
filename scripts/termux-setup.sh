green='\033[0;32m'
red='\033[0;31m'
bred='\033[1;31m'
cyan='\033[0;36m'
grey='\033[2;37m'
reset="\033[0m"


cd $HOME
rm -rf ../usr/etc/motd
clear

sleep 5

echo -e "[${green}+${reset}] INSTALLING PACKAGE"


sleep 1

pkg update

pkg upgrade


echo -e "$[${green}+${reeset}] PKG UPGRADE IS DONE"

clear

sleep 1

pkg install git wget -y

sleep 1

wget https://raw.githubusercontent.com/LinuxDroidMaster/Termux-Desktops/main/scripts/termux_native/startxfce4_termux.sh
chmod +x startxfce4_termux.sh

sleep 1

clear

sleep 1


git clone https://github.com/3324343/Test8


pkg install x11-repo

pkg install termux-x11-nightly

sleep 1

pkg install proot-distro pulseaudio
pkg install xfce4
pkg install chromium

sleep 1

clear

sleep 1

echo -e  "[${green}+${reset}] Installing additional packages? (Y/n):"

read packages

if [[ $packages == "y" ]]; then

cd $HOME
mkdir .config
rm -rf .config/cava
rm -rf .config/fastfetch

cd .config
mkdir fastfetch
cd $HOME
cd .config/fastfetch
rm -rf config.jsonc
wget https://raw.githubusercontent.com/3324343/Test8/refs/heads/main/files/.config/fastfetch/config.jsonc


pkg install fastfetch
pkg install rofi
pkg install cava
pkg install parole
pkg install termux-api

else
    echo "Leaving..."
fi
