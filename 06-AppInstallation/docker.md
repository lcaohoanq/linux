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
