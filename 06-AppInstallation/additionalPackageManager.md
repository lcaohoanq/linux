# Additional Package Managers

## snap

```bash
sudo apt install snapd
```

## yay

- yay (Yet Another Yaourt) is an AUR Helper written in Go. While `pacman` handles official repository packages, `yay` manages both official packages and AUR packages.

```zsh
# Update the system
sudo pacman -Syu
```

```zsh
sudo pacman -S --needed base-devel git

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si
```
