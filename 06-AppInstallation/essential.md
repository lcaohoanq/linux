# [Screen capture]

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

# Git

```bash
sudo apt install git
git --version
```

# Nodejs

```bash
sudo apt install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
node -v
```

```bash
# if meet nvm command not found
source ~/.nvm/nvm.sh
```

```bash
# node latest
nvm install node
```

```bash
# specify the version
nvm install 18.18.0
```

```bash
# show all node version installed
nvm list

# choose your version
nvm use 12.7.0
```

# Spotify

```bash
flatpak install flathub com.spotify.Client
```
