#!bin/sh

#self enables
#Tap to click = Settings->Mouse&Touchpad -> tap to click + natural scrolling + 2 finger scroll
#Gnome tweak tool = keyboard&mouse->touchpad,click method finger (single for left , double finger for right , triple finger for mid)
#Gnome tweak tool = Windows -> maximize +  minimize , Top Bar - > Show date

#update
sudo dnf update --refresh

#ZSH
sudo dnf install zsh util-linux-user #for chsh
chsh -s $(which zsh)
echo "Please LogOut"

#gnome-tweak tool
#sudo dnf install gnome-tweak-tool

#VSCODE
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
#dnf check-update
#sudo dnf install code

#NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.5/install.sh | bash

#RPM Fusion Free (Fedora 22 and above)
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

#RPM Fusion NON-Free
#sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

#ntfs-3g fuse

#installs
dnf check-update
sudo dnf install code gnome-tweak-tool vlc @development-tools
