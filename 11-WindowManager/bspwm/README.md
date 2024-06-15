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
- Show all external output connection
```bash
xrandr --query
```

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/2a1465f7-62fd-4c66-ae94-817ebcf9bb21)

```bash
xrandr --listmonitors
```

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/9b99abe0-c190-4a6b-a1a2-f3b4f7ee5b63)

- I want to set the DP-1-8 is my primary at the left and HDMI-1 at the right
- Create `monitor_setup.sh` with the configuration below
```bash
nvim ~/.config/bspwm/monitor_setup.sh
```

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/9543ef69-7bfc-4764-a63a-b9fda18a4bf9)

- Change mode to executable

```bash
chmod +x ~/.config/bspwm/monitor_setup.sh
```

- Import the `monitor_setup.sh` to `bspwmrc`

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/4eb7fceb-318f-4675-972c-c070b1e872ba)

- Reload

```bash
bspc wm -r

# more convenience i assign the alias for this key
echo "alias reloadbspwm='bspc wm -r'" >> ~/.bashrc
```

# Screen background
```bash
sudo apt install feh
```
- Create `set_background.sh` to `~/.config/bspwm` 

```bash
nvim ~/.config/bspwm/set_background.sh
```

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/525a77f0-48c7-468c-a2bf-89d0cff0cf47)

```sh
#!/bin/sh

# Set the background image with feh
# feh --bg-scale <image_path>

feh --bg-scale /media/lcaohoanq/MULTIMEDIA/graphics/wallpaper/MacOS/ipad/ipad-air-2020-2560x1440-dark-abstract-23518.jpg
```

- Import to `bspwmrc`

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/4eb7fceb-318f-4675-972c-c070b1e872ba)

- Reload
```bash
reloadbspwm #i have assigned the alias above
```

# Compton vs Picom

- Adjust the current window style

## 1. Compton

## 2. Picom

- Install

```bash
sudo apt-get install picom
```

```bash
nvim ~/.config/picom.conf
```

```bash
# Enable the experimental feature to round window corners
experimental-backends = true;

# Set the corner radius (in pixels)
corner-radius = 15.0;
```

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/9399161e-7a8f-4dff-bd96-f9ad32b1279b)

- Reload

# Polybar
> https://github.com/adi1090x/polybar-themes.git

```bash
git clone https://github.com/adi1090x/polybar-themes.git
cd polybar-themes
chmod +x setup.sh
```

- List options
```bash
bash ~/.config/polybar/launch.sh
```

- Usage
```bash
bash ~/.config/polybar/launch.sh --panels
```

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/9ccff217-2eca-4648-bd0b-99e65137d75a)


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

- Alias
- <Super> + <Space>

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/b5372994-a221-43d3-8fa4-1f4897f43f01)


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

- Alias

```bash
echo "alias wifi='nmcli device wifi list'" >> ~/.bashrc
source ~/.bashrc
```

# Bluetooth

## 1. GUI

```bash
sudo apt-get install blueman  
```

- Usage

```bash
blueman-manager
```

- Alias with `bluetooth`
```bash
echo "alias bluetooth='blueman-manager'" >> ~/.bashrc
```

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/4b47058c-daf7-480a-9e14-47a019fbc829)

## 2. Terminal

# Sound
- Map the knob keyboard to change volumn
- Detect by `xev`
  - Increase volumn is `123`
  - Decrease `122`
  - Mute `121`
  
- Once you have identified the knob input, you can configure BSPWM's sxhkd to respond to this input by adjusting the volume using `pactl`, `amixer`, or any other volume control tool.
- Install

```bash
sudo apt-get install pamixer
```

```sh
# Sound control on keyboard
# Volume up
XF86AudioRaiseVolume
    pamixer -i 5

# Volume down
XF86AudioLowerVolume
    pamixer -d 5

# Mute/unmute
XF86AudioMute
    pamixer -t
```

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/e0d8af2f-89c4-4eb3-9657-f88473b02ffc)


## 1. GUI

- PulseAudio Volume Control (pavucontrol):

```bash
sudo apt-get install pavucontrol
```

- Usage

```bash
pavucontrol
```

- Alias

```bash
echo "alias sound='pavucontrol'" >> ~/.bashrc
``

## 2. Terminal
