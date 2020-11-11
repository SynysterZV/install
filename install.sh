#==================================UPDATE====================================
sudo apt-get update && sudo apt-get upgrade -y
sudo apt remove apport apport-gtk #Remove annoying crash reports

#================================DEPENDENCIES================================

#Brave PreReq
sudo apt install -y apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update

#Timeshift PreReq
sudo add-apt-repository –y ppa:teejee2008/ppa
sudo apt update

#GIMP PreReq
sudo add-apt-repository –y ppa:teejee2008/ppa
sudo apt update

#VirtualBox Install
sudo apt purge -y virtualbox
mkdir vbox && cd vbox
wget https://download.virtualbox.org/virtualbox/6.1.16/virtualbox-6.1_6.1.16-140961~Ubuntu~eoan_amd64.deb 
sudo dpkg -i virtualbox-6.1_6.1.16-140961~Ubuntu~eoan_amd64.deb
sudo apt --fix-broken -y install
cd ..
sudo rm -r vbox
#bruv

#MetaPackage
sudo apt install -y wireshark ubuntu-restricted-extras gparted gimp timeshift brave-browser gnome-tweaks gnome-shell-extensions openjdk-11-jdk default-jre snap wine-stable winetricks ttf-mscorefonts-installer unrar zip unzip p7zip-full p7zip-rar rar

sudo snap install atom vlc

