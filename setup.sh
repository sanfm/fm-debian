username=$(id -u -n 1000)


# Update packages list
apt update


# Install base packages
# https://wiki.archlinux.org/title/desktop_environment
#apt install unzip picom bspwm polybar lightdm rofi kitty thunar sxhkd nitrogen lxpolkit lxappearance xorg lightdm-gtk-greeter vim -y

apt install unzip curl picom bspwm polybar lightdm rofi kitty thunar sxhkd nitrogen lxpolkit lxappearance xorg git vim -y


#install lightdm-webkit2-greeter
echo 'deb http://download.opensuse.org/repositories/home:/antergos/Debian_9.0/ /' | sudo tee /etc/apt/sources.list.d/home:antergos.list
curl -fsSL https://download.opensuse.org/repositories/home:antergos/Debian_9.0/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_antergos.gpg > /dev/null
apt update
apt install lightdm-webkit2-greeter -y


# Enable lightdm on start up
sudo systemctl enable lightdm.service


# Copy configuration files
mkdir -p /home/$username/.config
cp -R dotfiles/* /home/$username/.config/
cd /home/$username
chown -R $username .config
chgrp -R $username .config


# Install litarvan theme for lightdm-webkit2-greeter
mkdir -p /usr/share/lightdm-webkit/themes/litarvan
cd /usr/share/lightdm-webkit/themes/litarvan
git clone https://github.com/Litarvan/lightdm-webkit-theme-litarvan.git
./build.sh
