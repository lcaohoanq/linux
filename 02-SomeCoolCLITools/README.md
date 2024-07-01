## [Some cool CLI tools]
- Ref: https://dev.to/lissy93/cli-tools-you-cant-live-without-57f6

> My favorite:
- neofetch
- `htop` : System monitor
![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/6e0d930b-4923-40c7-a77c-139ccf462c0a)
- `btop` : Same as htop but look prettier
![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/b6792e97-f792-412b-9459-757921ba3805)
- `ranger` : GUI terminal file navigation
![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/55fcb569-c56c-458b-9587-3b85b6f653f7)
  - config ranger can preview text, image, video
  ```bash
  # Debian

  ```

  ```bash
  # Arch
  sudo pacman -S w3m mpv ueberzug

  # this command will generate the ranger configuration ~/.config/ranger
  ranger --copy-config=all

  # edit file rc.conf
  nano ~/.config/ranger/rc.conf
  ```
  ```bash
  set preview_images_method kitty
  set preview_images true 
  set show_hidden true
  ```
- `duf` : better `du`
![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/b016e577-4caf-4249-ad8d-c19d5b0fc227)
- `byobu` : more enhancements of tmux
- `zoxide` : better `cd`
- `fzf`: cool find file tools
  ```bash  
    # install
    sudo apt install fzf

    fzf
    __________________
    > index.js

    # preview the file content
    fzf --preview='cat {}'
    __________________
    > index.js
  
    # preview and open in neovim
    nvim $(fzf --preview='cat {}')
  ```
- `ytfzf`: playing youtube video with terminal
  - ref: https://www.makeuseof.com/watch-youtube-videos-in-linux-terminal/
 # Arch
```bash
yay -S ytfzf yt-dlp
```

 # Debian
  ```bash
  # Installation
  sudo apt install jq curl mpv fzf

  # re-install mpv if at the end you can not stream the video
  sudo apt install snapd
  sudo snap install mpv
  
  sudo apt install ueberzug

  # clone the repo
  git clone git@github.com:pystardust/ytfzf.git
  
  cd ytfzf

  sudo apt install make
  
  sudo make install
  sudo make install doc
  sudo make addons
  ```

  - config
  ```bash
  sudo mkdir ~/.config/ytfzf
  cd ~/.config/ytfzf
  sudo nano conf.sh
  ```
  - the content in file

  ```bash
  video_pref="bestvideo[height<=?720][fps<=?30]"
  audio_pref='bestaudio/audio'
  is_detach=yes
  thumbnail_viewer='kitty'
  skip_thumb_download=no
  enable_back_button=yes
  enable_hist=no
  enable_submenus=yes
  ```

  ```bash
  # choose the first video and stream it
  ytfzf -a slay! phonk

  # show the list of options to choose 
  ytfzf -t
  > Linux
  ```

  - remap the key
  ```bash
  echo "alias yt='ytfzf - t'" >> ~/.bashrc
  source ~/.bashrc
  ```
