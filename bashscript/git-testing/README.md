# Hi this repo is a diary of my path learning and using Linux

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
