- In case 2 OS are setting up and runing

```bash
sblk -o NAME,SIZE,UUID
```

```bash
NAME     SIZE UUID
sda    238.5G 
├─sda1   100M 32FA-A12F
├─sda2 188.4G 36E41D7BE41D3E95
└─sda3    50G 01DB066FE023CA20
sdb    223.6G 
├─sdb1     1G 4AD9-733C
└─sdb2 222.6G c41b185b-d17b-43ce-91ae-466e579e3baa
zram0      4G 
```

- sda is Window disk (sda1: EFI partition), and sdb is Arch Linux

- Create /mnt/boot folder

```bash
sudo mkdir -p /mnt/boot
```

- Mount Arch Linux and EFI partition

```bash
# Mount the root partition of Arch (already done if you're booted into Arch)
sudo mount /dev/sdb2 /mnt

# Mount the EFI partition from the Windows disk
sudo mount /dev/sda1 /mnt/boot
```
- Install GRUB and Required Packages

```bash
sudo pacman -S grub efibootmgr os-prober
```

- Install GRUB on UEFI

```bash
sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
```

- Enable OS detection

```bash
sudo nano /etc/default/grub
#Ensure that GRUB_DISABLE_OS_PROBER=false is set (not comment)
```

- Generate GRUB Configuration

```bash
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

- Reboot
