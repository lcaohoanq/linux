# Install

```bash
sudo apt instal kitty
```

```bash
sudo pacman -S kitty
```

```bash
whereis kitty
# /usr/bin/kitty
```

# Configuration

```bash
mkdir -p ~/.config/kitty
nano ~/.config/kitty/kitty.conf
```

- Copy this configuration

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
