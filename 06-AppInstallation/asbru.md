# SSH-Cli on Linux

- Install requirement package

```bash
yay -S perl-expect perl-net-arp uuid perl-crypt-rijndael perl-io-stty
```

- Clone the offical from repo and build

```bash
git clone https://aur.archlinux.org/asbru-cm-git.git && cd asbru-cm-git
makepkg -si
```

- Install OpenSSH
```bash
sudo pacman -S openssh
sudo systemctl start sshd
sudo systemctl enable sshd
sudo systemctl status sshd
sudo nano /etc/ssh/sshd_config
```

- Port: Change the port number to something other than the default (22) for security purposes.
- PermitRootLogin: Set this to no to disable root logins.
- PasswordAuthentication: Set this to no to disable password-based logins (use key-based authentication instead).
