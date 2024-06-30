# JDK

## Debian

- Automatic way

```bash
sudo apt-get install openjdk-17-jdk
```

- Manual way

> Download jdk from: https://www.oracle.com/java/technologies/downloads/#java8

```bash
sudo apt update

# Extract the downloaded file
tar -xvf jdk-8uXXX-linux-x64.tar.gz

# Move the extracted folder to /usr/local
sudo mv jdk1.8.0_XXX /usr/local/

sudo update-alternatives --install /usr/bin/java java /usr/local/jdk1.8.0_XXX/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac /usr/local/jdk1.8.0_XXX/bin/javac 1

sudo update-alternatives --config java
sudo update-alternatives --config javac
```

```bash
export JAVA_HOME=/usr/local/jdk1.8.0_XXX
export PATH=$JAVA_HOME/bin:$PATH
```

```bash
source ~/.bashrc
```

## Arch

- Installation, via yay

```zsh
yay -S jdk17-temurin
```

- Choose default version
  - Easy way

```zsh
archlinux-java status

sudo archlinux-java set <identifier>

archlinux-java status
```

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/d6581656-4c1c-4437-9a72-c279bd0caf3a)

- Manual way, setting the HOME_ENVIRONMENT

# Maven

## Debian

```bash
sudo apt-get install maven
```
