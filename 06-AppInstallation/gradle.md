- https://www.youtube.com/watch?v=5WJZ8WEMCmg

```zsh
sudo apt update sudo apt upgrade -y
sudo apt install openjdk-17-jdk wget unzip -y
java -version
wget https://services.gradle.org/distributions/gradle-8.4-bin.zip
sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle gradle-8.4-bin.zip
ls /opt/gradle/gradle-8.4
sudo ln -s /opt/gradle/gradle-8.4 /opt/gradle/latest
echo "export PATH=\$PATH:/opt/gradle/latest/bin" | sudo tee /etc/profile.d/gradle.sh
sudo chmod +x /etc/profile.d/gradle.sh
source /etc/profile.d/gradle.sh
gradle -v
```
