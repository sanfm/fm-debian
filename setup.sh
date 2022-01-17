username=$(id -u -n 1000)
builddir=$(pwd)


# Update packages list
apt update


# Install base packages
# https://wiki.archlinux.org/title/desktop_environment
apt install unzip picom bspwm polybar lightdm rofi kitty thunar sxhkd nitrogen lxpolkit lxappearance xorg lightdm-gtk-greeter git vim -y

# Enable lightdm on start up
sudo systemctl enable lightdm.service
# Custom config for lightdm & lightdm-gtk-greeter
cp -R lightDM/* /etc/lightdm/


# Copy configuration files
mkdir -p /home/$username/.config
cp -R dotfiles/* /home/$username/.config/
cd /home/$username
chown -R $username .config
chgrp -R $username .config
mv .config/vimrc /etc/vim/vimrc

cd $builddir
# Add theme and icons
cp themes-icons/Orchis.tar.xz /usr/share/themes
tar -xf /usr/share/themes/Orchis.tar.xz -C /usr/share/themes/
rm /usr/share/themes/Orchis.tar.xz
cp themes-icons/01-Tela.tar.xz /usr/share/icons
tar -xf /usr/share/icons/01-Tela.tar.xz -C /usr/share/icons/
rm /usr/share/icons/01-Tela.tar.xz

# Add images
mkdir -p /usr/share/backgrounds
mkdir -p /usr/share/backgrounds/wallpapers
cp images/login-background.jpg /usr/share/backgrounds/
cp images/background-1.jpeg /usr/share/backgrounds/wallpapers/
cp images/electric-guitar.png /usr/share/pixmaps/

# Add fonts
#https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts
mkdir -p /usr/share/fonts/NerdFonts
cp -R fonts/* /usr/share/fonts/NerdFonts/
tar -xf /usr/share/fonts/NerdFonts/NerdFiraCode.tar.gz -C /usr/share/fonts/NerdFonts
tar -xf /usr/share/fonts/NerdFonts/NerdCodeNewRoman.tar.gz -C /usr/share/fonts/NerdFonts
rm /usr/share/fonts/NerdFonts/NerdCodeNewRoman.tar.gz
rm /usr/share/fonts/NerdFonts/NerdFiraCode.tar.gz
fc-cache -fv

# create user directories
cd /home/$username
mkdir -p Documents Downloads Music Pictures Videos
chown $username *
chgrp $username *
