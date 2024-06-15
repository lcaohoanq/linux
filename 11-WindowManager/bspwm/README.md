Ref: https://medium.com/tech-notes-and-geek-stuff/installing-bspwm-on-debian-fd6a315f6903

# Installation
```bash
sudo apt install bspwm sxhkd polybar compton rofi dunst nitrogen i3lock redshift cmus ranger
```
> First thing: DO NOT START BSPWM. Copy the example configuration to your ~/.config folder and make sure bspwmrc is executable :

```bash
cd ~/.config/ && mkdir -p bspwm sxhkd
cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
chmod u+x ~/.config/bspwm/bspwmrc
```

- Notice that Bspwm uses two config files:
  - `bspwmrc` that start programs and defines your WM rules
  - `sxhkdrc` that handles keyboard shortcuts

## Key Bindings: sxhkdrc
```bash
nvim ~/.config/sxhkd/sxhkdrc
```
- Basic shortcuts (not all default):
  
```text
Super + d:                rofi
Super + Return:           terminal
Super + Shift + return:   floating terminal
Super + {1–9}:            go to ws
Super + Ctrl + {Left, Right}: go to ws
Super + Shift + {1–9}:    move window to ws
Super + f:                floating
Super + w:                monocle
Super + q:                close window
Super + Shift + q:        quit wm
Super + l:                session menu
Super + Esc:              reload sxhkd
Super + Alt + e:          reload bspwm
```

## Config file: bspwmrc
```bash
nvim ~/.config/bspwm/bspwmrc
```

- Declare the apps to autostart when launching a session:

```text
make sure sxhkdrc is launched at start: pgrep -x sxhkd > /dev/null || sxhkd &
compositing manager: compton --backend glx --vsync opengl-swc &
polkit usr/lib/xfce-polkit/xfce-polkit &
bar (here polybar, throught a script): ~/bin/polybar.launch.sh &
wallpaper: nitrogen --restore &
Then specify windows and workspaces rules . When settings rules you may need to check programs name/label/class with xprop.
```

# External Screen configuration

# Screen background
```bash
sudo apt install feh
```

# Compton vs Picom

# Polybar

# Rofi
> https://github.com/w8ste/Tokyonight-rofi-theme
```bash
  rm -rf ~/.config/rofi
  git clone git@github.com:w8ste/Tokyonight-rofi-theme.git ~/.config/rofi
  sudo mv ~/.config/rofi/tokyonight.rasi /usr/share/rofi/themes
  sudo mv ~/.config/rofi/tokyonight_big1.rasi /usr/share/rofi/themes
  sudo mv ~/.config/rofi/tokyonight_big2.rasi /usr/share/rofi/themes
  rm ~/.config/rofi/README.md
```
- Run
```bash
rofi -show drun
```

# Wifi
> nmcli (NetworkManager Command-Line Interface)

- To list available WiFi networks, open a terminal and use:
```bash
nmcli device wifi list
```

- To connect to a WiFi network, use:
```bash
nmcli device wifi connect SSID password PASSWORD
```
- Replace SSID and PASSWORD with the actual SSID and password of the network you want to connect to.

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/c515b322-ac15-4b16-ba69-64417b965885)
