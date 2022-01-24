# fm-debian
Custom Debian enviroment based on BSPWM

# Instalation

Clone the repository, or download as a zip.
```
git clone https://github.com/fedemoles/fm-debian.git
```
move into the directory

```
cd fm-debia/
```

And run the bash script 'setup.sh' as root

```
sudo sh setup.sh
```

# Changes you could want to make

I'm using a 27 inch 4k monitor, so you may want to change things like fonts and HiDPI (display scaling). Below you can find a list of every parameter, fonts and size of rofi menus and polybar bar, that you could change if you want to make everything looks bigger or samller.

## .Xresources
- Line 1 --> HiDPI (screen scaling): 96 is normal (100%), 192 is 200%, etc

## Polybar
```
polybar/config
```
- Line 54 --> height
- Line 76 --> font size and offset
- Line 120 --> font size and offset of the secondary bar

```
polybar/custom_modules.ini
```
- Line 118 --> label-len

## Kitty
```
kitty/kitty.conf
```
- Line 28 --> font_size

## Rofi
```
rofi/config.rasi
```
- Line 2 --> Font size
- Line 31 --> Secondary Font size
- Line 20 --> width (size of the rofi menu)

```
rofi/powermenu/card_circle.rasi
```
- Lines 2 & 80 --> Font size 
- Line 18 --> width

```
rofi/powermenu/confirm.rasi
```
- Line 8 --> Font size
- - Line 12 --> width

```
rofi/powermenu/message.rasi
```
- Line 8 --> Font size
- Line 12 --> width

```
rofi/themes/style_12.rasi
```
- Lines 2 & 31 --> Font size
- Line 20 --> width

```
rofi/themes/style_2.rasi
```
- Lines 2 & 31 --> Font size
- Line 20 --> width

```
rofi/themes/style_1.rasi
```
- Lines 2 & 31 --> Font size
- Line 20 --> width

You also would want to check the padding values in the rofi files (inside the 'mainbox' class) if elements are not centered in the rofi menus.


