username=$(id -u -n 1000)


# Update packages list
apt update


# Install base packages
# https://wiki.archlinux.org/title/desktop_environment
apt install unzip picom bspwm polybar lightdm rofi kitty thunar sxhkd nitrogen lxpolkit lxappearance xorg lightdm-gtk-greeter git vim -y

# Enable lightdm on start up
sudo systemctl enable lightdm.service
# Custom config for lightdm & lightdm-gtk-greeter
cp - R lightDM/* /etc/lightdm/


# Copy configuration files
mkdir -p /home/$username/.config
cp -R dotfiles/* /home/$username/.config/
cd /home/$username
chown -R $username .config
chgrp -R $username .config


# Add images
mkdir -p /usr/share/backgrounds
mkdir -p /usr/share/backgrounds/wallpapers
cp images/login-background.jpg /usr/share/backgrounds/
cp images/background-1.jpeg /usr/share/backgrounds/wallpapers/
cp images/electric-guitar.png /usr/share/pixmaps/


