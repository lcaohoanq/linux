# vscode

- Debian

```bash
sudo snap install code --classic
```

- Arch

```bash
yay -S visual-studio-code-bin
```

- Flatpak

```bash
flatpak install flathub com.visualstudio.code
```

# intellij ultimate

- Debian

```bash
sudo snap install intellij-idea-ultimate --classic
```

- Arch

```bash
yay -S intellij-idea-ultimate-edition
```

- Flatpak

```bash
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Ultimate
```

# Netbeans

- Debian

```bash
sudo snap install netbeans --classic
```

- Arch

```bash
yay -S netbeans
```

- Flatpak

```bash
flatpak install flathub org.apache.netbeans
```

# NeoVim

- Install LazyVim

  - https://dev.to/zt4ff_1/effective-neovim-setup-a-beginners-guide-1i81
  - Install nvim 0.10.0

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

export PATH="$PATH:/opt/nvim-linux64/bin"
echo "alias nvim='/opt/nvim-linux64/bin/nvim'" >> ~/.bashrc
source ~/.bashrc

# whereis nvim
# nvim: /opt/nvim-linux64/bin/nvim

# clone the lazyvim repo
git clone https://github.com/LazyVim/starter ~/.config/nvim
```

- Press Install(I) for the first time

> Bug:
> Error detected while processing User Autocommands for "VeryLazy":
> No C compiler found! "cc", "gcc", "clang", "cl", "zig" are not executable.

```bash
sudo apt update
sudo apt install build-essential
```
