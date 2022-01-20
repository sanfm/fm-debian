# fm-debian
Custom Debian enviroment based on BSPWM

# Work in progress

SOLVED: For some reason to make gtk themes work properly you need to configure them in lxappearance


### Add custom rofi scripts to path

Scripts are been saved to /hom/username/.local/bin

'''
cd $HOME

echo "PATH=$PATH:$HOME/.local/bin" >> .bashrc

export PATH

source ~/.bashrc
'''
