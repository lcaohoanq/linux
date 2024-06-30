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
