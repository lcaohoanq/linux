## 4. [Useful configuration]

- Mapping mouse with `xbindkeys`
   - Install `kwin`
   - https://www.google.com/url?q=https://github.com/Bismuth-Forge/bismuth&sa=D&source=docs&ust=1718093947630257&usg=AOvVaw3K2LQnDy3hmpsLycFWVMUU
  ```bash
  sudo apt install kwin-bismuth
  ```
  - Enable the below options and do a little adjust from default **Meta + F8** to **Meta + Tab** at Shhow Desktop Grid

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/c19c2d7f-fa1d-43f4-91f5-57590386c3bd)

  - Install `xbindkeys`
  ```bash
  sudo apt-get install xbindkeys xautomation

  # identify which number of button / keycode when click into the small square
  xev

  # create xbindkeysrc file
  nano ~/.xbindkeysrc
  ```

  - After detect i know the `forward` and `backward` of my mouse **(VXE R1 SE+)** is `113` and `114`
  - So i want to map it to the **same as the kwin script above** to iterate the virtual desktop
  
  ```bash
  "xte 'keydown Alt_L' 'key Left' 'keyup Alt_L'"
  c:113

  "xte 'keydown Alt_L' 'key Right' 'keyup Alt_L'"
  c:114  # Replace with actual keycode for the forward button

  # Middle click
  # Supper + Tab (Windows + Tab)
  "xte 'keydown Alt_L' 'key Tab' 'keyup Alt_L'"
  c:133
  ```

![image](https://github.com/lcaohoanq/Linux-Issues/assets/136492579/9d219525-1f1e-4f5c-b623-02f3742ea3ef)


  ```bash
  # Save and Close
  # Start the xbindkeys
  xbindkeys
  ```

- Change trackpoint sensitivity
```bash
# replace your sensitivity at 150

echo 150 | sudo tee /sys/devices/platform/i8042/serio1/serio2/sensitivity
```