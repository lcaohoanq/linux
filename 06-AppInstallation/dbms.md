# MongoDB Compass

- Arch

```bash
yay -S mongodb-bin
```

- Flatpak

```bash
flatpak install flathub com.mongodb.Compass
```

# Azure Data Studio

> Firstly, you need to install the mssql-server package, Debian and Arch have different ways to install it.

- Debian
  - Follow this: https://learn.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-ver16&tabs=ubuntu2004
    https://www.youtube.com/watch?v=GBboALYvvuE&t=316s&ab_channel=KevinFeasel
  - Remember to install libdlap before you type **sudo /opt/mssql/bin/mssql-conf setup**

```bash
# 2.4
sudo wget http://http.us.debian.org/debian/pool/main/o/openldap/libldap-2.4-2_2.4.47+dfsg-3+deb10u7_amd64.deb
sudo apt install ./libldap-2.4-2_2.4.47+dfsg-3+deb10u7_amd64.deb
```

```bash
#1.1
wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.22_amd64.deb
sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2.22_amd64.deb
```

- Arch

- https://www.deanthomson.com/blog/microsoft-sql-server-on-arch-linux/

```bash
yay -S libldap24
```

```bash
mkdir ~/aur
cd ~/aur
git clone https://aur.archlinux.org/mssql-server.git
git clone https://aur.archlinux.org/msodbcsql.git
git clone https://aur.archlinux.org/mssql-tools.git
```

```zsh
cd ~/aur/mssql-server
makepkg -sirc
cd ~/aur/msodbcsql
makepkg -sirc
cd ~/aur/mssql-tools
makepkg -sirc
```

```zsh
systemctl status mssql-server.service
```

```zsh
sudo /opt/mssql/bin/mssql-conf setup
```

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/3c019844-8f2d-4dff-ae4f-a880e6e86aff)

### After that you can install Azure Data Studio

> https://learn.microsoft.com/en-us/azure-data-studio/download-azure-data-studio?tabs=linux-install%2Cwin-user-install%2Cubuntu-install%2Cwindows-uninstall%2Credhat-uninstall

- Debian

```bash
sudo snap install azuredatastudio
```

- Arch

```zsh
yay -S azuredatastudio-bin
```
- If have error conflict with visual-studio-code-bin-debug (you have installed vscode before)
```zsh
sudo pacman -R visual-studio-code-bin-debug
```
- Re-install again
