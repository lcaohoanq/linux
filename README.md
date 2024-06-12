## 1. [Linux Basics]

<details>
  <summary>Most used commands:</summary>

  - **cd** : Change directory
    - `cd /home/user`
    - `cd ~`
    - `cd ..`
  - **ls** : List files and directories
    - `ls`
    - `ls -l` | `ls -al`
    - `ls -a`
  - **pwd** : Print working directory
  - **cat**
    - `cat file.txt`
  - **cp** : Copy files and directories
    - `cp file.txt file2.txt`
    - `cp -r dir1 dir2`
    - `cp * /usr/share/.fonts`
  - **mv** : Move files and directories
    - `mv file.txt /usr/share/.fonts`
    - `mv file.txt file2.txt`
    - `mv * /usr/share/.fonts`
  - **rm** : Remove files and directories
    - `rm file.txt`
    - `rm -r dir1`
    - `rm -rf dir1`
  - **mkdir** : Make directories
  - **echo** : Write text to file
    - `echo "Hello World" > file.txt`
  - **touch** : Create file
    - `touch file.txt`
  - **nano** : Text editor
    - `nano file.txt`
    - `Ctrl + X` : Exit
    - `Ctrl + O` : Save
  - **unzip** : Unzip files
    - `unzip file.zip`
  - **tree** : Show the current directory with the tree visualization
    ```bash
    # show everything
    tree

    # show directories only
    tree -D

    # show directories except the pattern
    tree -I "node_modules"

    # show except the pattern, directories only
    tree -I "node_modules" -D
    ```
  - **sudo reboot** : Reboot system
  - **sudo shutdown -h now** : Shutdown immediately
  - **sudo shutdown -P +10** : (10mins)
</details>

- Advanced command
  - chmod [arguement] : give a file specific permission
    - +x : can executable
    - 777 : give all permission (do not recommend to use)
    - 400 : read only

## 2. [Linux Desktop Environment]

- Gnome
- KDE
- XFCE
- LXDE

## 3. [Some cool CLI tools]
- Ref: https://dev.to/lissy93/cli-tools-you-cant-live-without-57f6
> My favorite:
- neofetch
- `htop` : System monitor
![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/6e0d930b-4923-40c7-a77c-139ccf462c0a)
- `btop` : Same as htop but look prettier
![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/b6792e97-f792-412b-9459-757921ba3805)
- `ranger` : GUI terminal file navigation
![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/55fcb569-c56c-458b-9587-3b85b6f653f7)
- `duf` : better `du`
![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/b016e577-4caf-4249-ad8d-c19d5b0fc227)
- `byobu` : more enhancements of tmux
- `zoxide` : better `cd`
- `fzf`: cool find file tools
  ```bash  
    # install
    sudo apt install fzf

    fzf
    __________________
    > index.js

    # preview the file content
    fzf --preview='cat {}'
    __________________
    > index.js
  
    # preview and open in neovim
    nvim $(fzf --preview='cat {}')
  ```
- `ytfzf`: playing youtube video with terminal
  - ref: https://www.makeuseof.com/watch-youtube-videos-in-linux-terminal/
  ```bash
  # Installation
  sudo apt install jq curl mpv fzf

  # re-install mpv if at the end you can not stream the video
  sudo apt install snapd
  sudo snap install mpv
  
  sudo apt install ueberzug

  # clone the repo
  git clone git@github.com:pystardust/ytfzf.git
  
  cd ytfzf

  sudo apt install make
  
  sudo make install
  sudo make install doc
  sudo make addons
  ```

  - config
  ```bash
  sudo mkdir ~/.config/ytfzf
  cd ~/.config/ytfzf
  sudo nano conf.sh
  ```
  - the content in file

  ```bash
  video_pref="bestvideo[height<=?720][fps<=?30]"
  audio_pref='bestaudio/audio'
  is_detach=yes
  thumbnail_viewer='kitty'
  skip_thumb_download=no
  enable_back_button=yes
  enable_hist=no
  enable_submenus=yes
  ```

  ```bash
  # choose the first video and stream it
  ytfzf -a slay! phonk

  # show the list of options to choose 
  ytfzf -t
  > Linux
  ```

  - remap the key
  ```bash
  echo "alias yt='ytfzf - t'" >> ~/.bashrc
  source ~/.bashrc
  ```
## 4. [Useful configuration]

- Mapping mouse with `xbindkeys`
   - Install `kwin`
   - https://www.google.com/url?q=https://github.com/Bismuth-Forge/bismuth&sa=D&source=docs&ust=1718093947630257&usg=AOvVaw3K2LQnDy3hmpsLycFWVMUU
  ```bash
  sudo apt install kwin-bismuth
  ```
  - Enable the below options and do a little adjust from default **Meta + F8** to **Meta + Tab** at Shhow Desktop Grid

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/c19c2d7f-fa1d-43f4-91f5-57590386c3bd)

  - Install `xbindkeys`
  ```bash
  sudo apt-get install xbindkeys xautomation

  # identify which number of button / keycode when click into the small square
  xev

  # create xbindkeysrc file
  nano ~/.xbindkeysrc
  ```

  - After detect i know the `forward` and `backward` of my mouse **(VXE R1 SE+)** is `113` and `114`
  - So i want to map it to the **same as the kwin script above** to iterate the virtual desktop
  
  ```bash
  "xte 'keydown Alt_L' 'key Left' 'keyup Alt_L'"
  c:113

  "xte 'keydown Alt_L' 'key Right' 'keyup Alt_L'"
  c:114  # Replace with actual keycode for the forward button

  # Middle click
  # Supper + Tab (Windows + Tab)
  "xte 'keydown Alt_L' 'key Tab' 'keyup Alt_L'"
  c:133
  ```

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/9d219525-1f1e-4f5c-b623-02f3742ea3ef)


  ```bash
  # Save and Close
  # Start the xbindkeys
  xbindkeys
  ```

- Change trackpoint sensitivity
```bash
# replace your sensitivity at 150

echo 150 | sudo tee /sys/devices/platform/i8042/serio1/serio2/sensitivity
```

## 5. [Change Input method]
- I'm using Ibus with 2 additional language is Vietnamese and Japanese (English is always have there)
### KDE Plasma
```bash
sudo apt update
sudo apt install ibus ibus-unikey ibus-anthy

# start ibus-daemon
ibus-daemon -drx

# set ibus is default input method
im-config -n ibus
```

- Reboot your system to apply changes

- After that we will enter to Ibus GUI configuration by command

```bash
ibus-setup
```

- In the Input Method tab:
  - Click on the Add button.
  - Search for and add Vietnamese (Unikey).
  - Search for and add Japanese (Anthy or Mocz), i`m using Mocz now
  - Add shortcut for change the input method:
  > Default is `<Super>space`, I change to `<Control><Alt>A`, it's up to you

- Adjust the Ibus-Preferences auto-start

![image](https://github.com/lcaohoanq/My-Linux-Experience/assets/136492579/c05e7ec4-f37f-4c7d-b525-2962b33001a2)

## 6. [Mount drive]
### 1. Install G-Parted
```bash
sudo apt install gparted
```

### 2. Get the drive's UUID
```bash
sudo blkid
```
> /dev/sda1: LABEL="DATA" BLOCK_SIZE="512" UUID="01DA2DC6505F5350" TYPE="ntfs" PARTUUID="5b1f3c87-01"

> /dev/sda2: LABEL="MULTIMEDIA" BLOCK_SIZE="512" UUID="01DA2DC651A519C0" TYPE="ntfs" PARTUUID="5b1f3c87-02"

> /dev/sdb1: LABEL="SOFT" BLOCK_SIZE="512" UUID="01D819C87037D350" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="d7e2f59c-334c-42c0-9b73-ac3f60a5d24c"

> /dev/sdb2: LABEL="DATA" BLOCK_SIZE="512" UUID="01D819C871BA0680" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="28912653-9449-4121-87b5-8efee1a56425"

> /dev/sdc1: UUID="022D-A728" BLOCK_SIZE="512" TYPE="vfat" PARTUUID="10eb9e0a-d35b-4a06-add6-5af9648660de"

> /dev/sdc2: UUID="61d23e9c-361e-4c0f-9813-ba446759b712" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="40ff6c17-e76d-4925-8dc8-4730a8ff2996"

> /dev/sdc3: UUID="0734bbed-9e19-4d56-bd5a-5ed1e81bbaf3" TYPE="swap" PARTUUID="cf63ed80-df79-47fa-bfda-9602602118b5"

> /dev/sdd1: LABEL="MULTISTORE" BLOCK_SIZE="512" UUID="E86223286222FB48" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="1f2fc849-9aa9-4e32-a9f5-ee8b97b207c3"

> /dev/sdd2: LABEL="SOFTSTORE" BLOCK_SIZE="512" UUID="1E54298454295FAF" TYPE="ntfs" PARTLABEL="Basic data partition" PARTUUID="016ad693-7b30-4361-a2ca-e33fd5ce20e1"

- Each UUID corresponding for each partion of each driver

### 3. Check your drive's type (NTFS,ext4,...)
- Install `ntfs-3g `, as it is required for mounting `NTFS` partitions with read and write access
```bash
sudo apt update
sudo apt install ntfs-3g
```

- If ext4, skip to the next step

### 4. Edit /etc/fstab

```bash
sudo nano /etc/fstab
```
![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/6dc573f5-a10a-4e00-b97a-22de486ab82a)

- This is my current disk
  > /dev/sdc1: UUID="022D-A728" BLOCK_SIZE="512" TYPE="vfat" PARTUUID="10eb9e0a-d35b-4a06-add6-5af9648660de"

  > /dev/sdc2: UUID="61d23e9c-361e-4c0f-9813-ba446759b712" BLOCK_SIZE="4096" TYPE="ext4" PARTUUID="40ff6c17-e76d-4925-8dc8-4730a8ff2996"

  > /dev/sdc3: UUID="0734bbed-9e19-4d56-bd5a-5ed1e81bbaf3" TYPE="swap" PARTUUID="cf63ed80-df79-47fa-bfda-9602602118b5"

- I want to mount as ntfs with read and write partition
- Replace the UUIDs with those of your NTFS partitions and the mount points with the ones you created
```bash
# NTFS partition 1
UUID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx /mnt/ntfs1 ntfs-3g defaults,rw 0 2

# NTFS partition 2
UUID=yyyyyyyy-yyyy-yyyy-yyyy-yyyyyyyyyyyy /mnt/ntfs2 ntfs-3g defaults,rw 0 2
```

- /mnt/ntfs1, /mnt/ntfs2: mount point (can be create manually or auto with 
- ntfs-3g: type partition

The defaults option is a shorthand that refers to a set of default mount options:

    rw (read-write)
    suid (allow set-user-identifier or set-group-identifier bits to take effect)
    dev (interpret character or block special devices on the filesystem)
    exec (allow execution of binaries)
    auto (can be mounted automatically with the mount -a command)
    nouser (only root can mount)
    async (all I/O to the filesystem should be done asynchronously)

rw

The rw option explicitly specifies that the filesystem should be mounted with read and write permissions.
0

This is the dump frequency. It is used by the dump command to determine which filesystems need to be dumped (i.e., backed up). A value of 0 means that the filesystem will not be dumped.
2

This is the fsck order. It specifies the order in which filesystem checks are done at boot time by the fsck utility:

    0 means the filesystem is not checked.
    1 is used for the root filesystem.
    2 means the filesystem will be checked after the root filesystem, with multiple filesystems having the same number being checked in parallel.

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/969fb8db-5ef8-4acf-b2d4-0042d2d77dbb)

### 5. Apply change

```bash
# apply without rebooting
sudo mount -a
# If meet any error about no mount directory found, just need to reboot

# verify mounting
df -h

# or (sudo apt install duf) for more colorful ^^
duf
```
![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/71e2488b-0f99-49db-9884-723c93bcd221)

## 7.[Some app install recommendation]
### Package manager
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
### Apps, Tools
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

- azure, mysql
  
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

- jdk
~ later

## 8.[Nvidia Graphics Card]

```bash
sudo add-apt-repository contrib
sudo add-apt-repository non-free
sudo apt update
sudo apt install nvidia-detect
nvidia-detect
sudo apt install nvidia-driver
```

## 9.[Terminal Customization]
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

### Setup Kitty terminal on WSL

```bash
sudo apt install kitty
```
- Copy this line link with Terminal windows to open with Kitty Terminal
```txt
"C:\Program Files\WSL\wslg.exe" -d Debian --cd "~" -- kitty
```
- Apply above settings

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/bf1aa720-aa94-420a-a73a-7efd895bfd02)

## 10.[Github-SSH key]
- https://docs.github.com/fr/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
```bash
mkdir ~/.ssh

# or i have my own .ssh key, i have create before
cp .ssh/ /home/lcaohoanq/.ssh/ -r

# Ensure ssh-agent is enabled
# The command starts the ssh-agent in the background
eval "$(ssh-agent -s)"

ssh-add id_xxxxx

# If meet the key are too open
chmod 400 /home/lcaohoanq/.ssh/id_xxxxx

# If meet permission denied when ssh-add
sudo chown lcaohoanq:lcaohoanq ~/.ssh/id_xxxxx

# Verify
ssh -T git@github.com
```

## 11.[Nvim]
### LazyVim
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

- Bug:
  - Error detected while processing User Autocommands for "VeryLazy":                                                                                            
    No C compiler found! "cc", "gcc", "clang", "cl", "zig" are not executable.
    ```bash
    sudo apt update
    sudo apt install build-essential
    ```

## 12. [Docker]
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
