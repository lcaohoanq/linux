# 7.[Some app install recommendation]
## Package manager
```bash
# snap
sudo apt install snapd

# flatpak: https://flathub.org/
sudo apt install flatpak

# Gnome
sudo apt install gnome-software-plugin-flatpak

# KDE
sudo apt install plasma-discover-backend-flatpak

# Add the Flathub repository
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```
## Apps, Tools
- vscode
```bash
sudo snap install code --classic
```

- intellij ultimate
```bash
sudo snap install intellij-idea-ultimate --classic
```
- netbeans
```bash
flatpak install flathub org.apache.netbeans
```

- vlc
```bash
flatpak install flathub org.videolan.VLC
```
  
- mongodb
```bash
flatpak install flathub com.mongodb.Compass
```

- azure
- https://www.deanthomson.com/blog/microsoft-sql-server-on-arch-linux/
```zsh
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

- mysql
  
- chrome
```bash
flatpak install flathub com.google.Chrome
```

- spotify
```bash
flatpak install flathub com.spotify.Client
```

- bruno, postman, insomnia
```bash
flatpak install flathub com.usebruno.Bruno
flatpak install flathub com.getpostman.Postman
flatpak install flathub rest.insomnia.Insomnia
```
  
- git
```bash
sudo apt install git
git --version 
```
- nodejs
```bash
sudo apt install curl 
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
node -v

# node latest
nvm install node

# specify the version
nvm install 18.18.0

# if meet nvm command not found 
source ~/.nvm/nvm.sh

# show all node version installed
nvm list

# choose your version
nvm use 12.7.0
```

- byobu
```bash
sudo apt install byobu
```

- maven
```bash
sudo apt-get install maven
```

- obs
```bash
flatpak install flathub com.obsproject.Studio

# fixed pipewire
sudo apt install pipewire
systemctl --user start pipewire 
```

## [Screen capture]
- Defautl in KDE using Spectacle but it too anoying when capture and save image to clipboard that need to many steps, so i decided to use `Flameshot` for the alternative
  
- https://flameshot.org/
  
- Install
```bash
sudo apt-get install flameshot
```

- Using

```bash
flameshot gui
```

- Make a simple shortcut
```bash
echo "alias capture='flameshot gui'" >> ~/.bashrc

source ~/.bashrc
```

## [Docker]
> https://docs.docker.com/desktop/install/debian/

- Bug:
  - https://stackoverflow.com/questions/48957195/how-to-fix-docker-got-permission-denied-issue 
  - https://www.xda-developers.com/how-enable-systemd-in-wsl/
  - https://stackoverflow.com/questions/72528606/docker-rancher-permission-denied-when-using-docker-from-wsl

### Docker Desktop

```bash
# Set up Docker's apt repository. See step one of Install using the apt repository.

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Download latest DEB package
https://desktop.docker.com/linux/main/amd64/149282/docker-desktop-4.30.0-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64&_gl=1*i8btbo*_ga*MTg1ODA1MjA5OC4xNzE3ODEyNDM2*_ga_XJWPQMJYHQ*MTcxNzgxMjQzNS4xLjEuMTcxNzgxMjQ3OC4xNy4wLjA.

# Install the package with apt as follows:

 sudo apt-get update
 sudo apt-get install ./docker-desktop-<version>-<arch>.deb

# Launch Docker Desktop
systemctl --user start docker-desktop
```

### Docker Engine

```bash
# 1. Set up Docker's apt repository
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# 2. Install the Docker packages
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# 3. Verify running
sudo docker run hello-world
```


- jdk
~ later
