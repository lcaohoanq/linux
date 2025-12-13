# [Github-SSH key]

- https://docs.github.com/fr/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

```bash
mkdir ~/.ssh

# or i have my own .ssh key, i have created before
cp .ssh/ /home/lcaohoanq/.ssh/ -r
```
```bash
# Ensure ssh-agent is enabled
sudo pacman -S openssh 
```

```bash
# The command starts the ssh-agent in the background
eval "$(ssh-agent -s)"
```

- Notice that if the .pub key have differ name need to specify the absolute path ssh-add /home/username/.ssh/id_xxxxx

```bash
ssh-add id_xxxxx

# If meet the key are too open
sudo chmod 400 /home/lcaohoanq/.ssh/id_xxxxx

# If meet permission denied when ssh-add
sudo chown lcaohoanq:lcaohoanq ~/.ssh/id_xxxxx

# Verify
ssh -T git@github.com
```
