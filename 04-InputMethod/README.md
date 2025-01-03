# Input method

- I'm using Ibus with 2 additional language is Vietnamese and Japanese (English is always have there)

## 1. Gnome
- https://minhng.info/tips/unikey-ubuntu-2204.html
- https://askubuntu.com/questions/1407560/switching-language-by-alt-shift-after-update-from-ubuntu-22-04-beta-to-release: switch to next input source -> CTRL + Alt + A (my favorite shortcut)

```bash
sudo apt install ibus-unikey
```

```bash
sudo apt install ibus-mozc mozc-utils-gui # Japanese
```

- Logout to takes effect

## 2. KDE Plasma

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

## 3. Arch

- Fcitx5 work with Japanese, but not Vietnamese
- Ibus still not work with Arch (continue to find the solution)
