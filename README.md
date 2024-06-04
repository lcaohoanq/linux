## 1. [Linux Basics]

- Most use command:
  - cd : Change directory
    > cd /home/user
    > cd ~
    > cd ..
  - ls : List files and directories
    > ls
    > ls -l | ls -al
    > ls -a
  - pwd : Print working directory
  - cat
    > cat file.txt
  - cp : Copy files and directories
    > cp file.txt file2.txt
    > cp -r dir1 dir2
    > cp \* /usr/share/.fonts
  - mv : Move files and directories
    > mv file.txt /usr/share/.fonts
    > mv file.txt file2.txt
    > mv \* /usr/share/.fonts
  - rm : Remove files and directories
    > rm file.txt
    > rm -r dir1
    > rm -rf dir1
  - mkdir : Make directories
  - echo : write text to file
    > echo "Hello World" > file.txt
  - touch : Create file
    > touch file.txt
  - nano : Text editor
    > nano file.txt
    - Ctrl + X : Exit
    - Ctrl + O : Save
  - unzip : Unzip files
    > unzip file.zip
- Other

  - htop : System monitor

- Most use command:
  - sudo : Super User Do
    > sudo apt-get install package
  - apt-get : Package manager
    > apt-get update
    > apt-get upgrade
    > apt-get install package
    > apt-get remove package
  - dpkg : Debian package manager
    > dpkg -i package.deb
    > dpkg -r package
  - systemctl : System and service manager
    > systemctl start service
    > systemctl stop service
    > systemctl restart service
    > systemctl status service
    > systemctl enable service
    > systemctl disable service
  - ps : Process status
    > ps
    > ps -aux
  - kill : Kill process
    > kill PID
    > kill -9 PID
  - top : System monitor
  - df : Disk free
    > df
    > df -h
  - du : Disk usage
    > du
    > du -h
  - free : Memory usage
    > free
    > free -h
  - ifconfig : Network configuration
    > ifconfig
  - ping : Test network connection
    > ping google.com
  - wget : Download files
    > wget file.zip
  - tar : Archive files
    > tar -cvf file.tar file
    > tar -xvf file.tar
  - gzip : Compress files
    > gzip file
    > gunzip file.gz
  - find : Find files
    > find / -name file.txt
  - grep : Search text
    > grep "text" file.txt
  - chmod : Change file permissions
    > chmod 777 file.txt
  - chown : Change file owner
    > chown user:group file.txt
  - passwd : Change user password
    > passwd user
  - useradd : Add user
    > useradd user
  - userdel : Delete user
    > userdel user
  - groupadd : Add group
    > groupadd group
  - groupdel : Delete group
    > groupdel group
  - crontab : Schedule tasks
    > crontab -e
  - history : Command history
    > history
  - clear : Clear terminal
  - reboot : Reboot system
    > sudo reboot
  - shutdown : Shutdown system
    > sudo shutdown -h now
    > sudo shutdown -P +10 (10mins)
  - exit : Exit terminal

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
- htop
- btop
- ranger
- byobu terminal
- neofetch
- zoxide

## 4. [Useful configuration]
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

## 5. Apply change

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

