username=$(id -u -n 1000)


# Update packages list
apt update


# Install base packages
# https://wiki.archlinux.org/title/desktop_environment
apt install unzip picom bspwm polybar lightdm rofi kitty thunar sxhkd nitrogen lxpolkit lxappearance xorg lightdm-gtk-greeter vim -y

# Enable lightdm on start up
sudo systemctl enable lightdm.service



# Copy configuration files
mkdir -p /home/$username/.config
cp -R dotfiles/* /home/$username/.config/
cd /home/$username
chown -R $username .config
chgrp -R $username .config
