# [Terminal Customization]
## Linux
1. Install Nerd-Fonts

- I'm prefer the 0xProto, Hack, Jetbrains Mono, Fira Code (...Nerd Fonts)
- https://www.nerdfonts.com/font-downloads
  
```bash
wget https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip

# Install fonts on per-user or system-wide?
# System-Wide Font Installation

sudo mkdir /usr/share/fonts/fira-code
sudo mv *.ttf /usr/share/fonts/fira-code/

# Regenerate font cache
sudo fc-cache -f -v

# Verify
fc-list | grep "Fira"
```

2. Apply the "randomly" bashshell customize of other guys

- https://www.linuxfordevices.com/tutorials/linux/beautify-bash-shell

```bash
git clone --recursive https://github.com/andresgongora/synth-shell.git

cd synth-shell

sudo chmod +x setup.sh

./setup.sh

# Yes for all~

# Any edit
nano ~/.bashrc
```

> Finnaly, we have such a pretty terminal

3. Some Cool Terminal Emulator
- byobu:
```bash
sudo apt install byobu

# /usr/bin/byobu

# F2: create a new tab
# Alt + (Left|Right) Arrow : Loop through current tab
# Shift + F2: split terminal horizontally
# Ctrl + F2: split terminal vertically
# Shift F3 | Shift F4: Loop through each splited terminal in one window
```

- kitty:
```bash
sudo apt instal kitty

whereis kitty
# /usr/bin/kitty

# Tab Management
- **Ctrl + Shift + T**: create a new tab
- **Ctrl + Shift + Q**: close current tab
- **Ctrl + Shift + Page Up | Page Down**: navigate between tabs

# Window Management
- **Ctrl + Shift + Enter**: create a new window
- **Ctrl + Shift + W**: close window
- **Ctrl + Shift + Left | Right**: navigate between windows

# Layout Management
- **Ctrl + Shift + D**: split window vertically
- **Ctrl + Shift + E**: split window horizontally
- **Ctrl + Shift + Alt + Left | Right**: resize horizontal split
- **Ctrl + Shift + Alt + Up | Down**: resize vertical split

# Scrollback Buffer
- **Ctrl + Shift + Up**: scroll up
- **Ctrl + Shift + Down**: scroll down
- **Ctrl + Shift + F**: search in scrollback

# Clipboard Operations
- **Ctrl + Shift + C**: copy to clipboard
- **Ctrl + Shift + V**: paste from clipboard
```
- mkdir -p ~/.config/kitty
- nano ~/.config/kitty/kitty.conf
```bash
# Font settings
font_family      FiraCode
font_size        14.0

# Color scheme
foreground       #d0d0d0
background       #1c1c1c
selection_foreground #000000
selection_background #ffffff

# Cursor settings
cursor           #ffffff
cursor_text_color #000000

# Padding
window_padding_width 10
window_padding_height 10

# Window transparency
background_opacity 0.9

# Tab bar settings
tab_bar_style powerline
active_tab_foreground #000000
active_tab_background #ffffff
inactive_tab_foreground #888888
inactive_tab_background #222222

# Bell settings
enable_audio_bell no
enable_visual_bell yes

# Scrollback buffer
scrollback_lines 10000

# URL handling
detect_urls yes
```

- **Config to run specify tab (nvim) with bash at startup**

```bash
nano ~/.config/kitty/my_kitty_session.conf
```

```bash
# ~/.config/kitty/my_kitty_session.conf

# First tab
tab first_tab
new_window bash

# Second tab running Neovim
tab second_tab
new_window nvim
```

```bash
# Include the session file
include my_kitty_session.conf
```

- restart

## Setup Kitty terminal on WSL

```bash
sudo apt install kitty
```
- Copy this line link with Terminal windows to open with Kitty Terminal
```txt
"C:\Program Files\WSL\wslg.exe" -d Debian --cd "~" -- kitty
```
- Apply above settings

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/bf1aa720-aa94-420a-a73a-7efd895bfd02)