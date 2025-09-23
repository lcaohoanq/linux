# 1. [Command Basics]

- Most used commands:

  - **cd** : Change directory
    - `cd /home/user`
    - `cd ~`
    - `cd ..`

  - **ls** : List files and directories
    - `ls`
    - `ls -l` | `ls -al`
    - `ls -a`

  - **pwd** : Print working directory

  - **cat**
    - `cat file.txt`

  - **cp** : Copy files and directories
    - `cp file.txt file2.txt`
    - `cp -r dir1 dir2`
    - `cp * /usr/share/.fonts`

  - **mv** : Move files and directories
    - `mv file.txt /usr/share/.fonts`
    - `mv file.txt file2.txt`
    - `mv * /usr/share/.fonts`
    - we can perform the rename file or directory by mv command: if i want to rename the file demo.txt to test.txt
    ```bash
    mv demo.txt test.txt
    # same as directory
    ```
    
  - **rm** : Remove files and directories
    - `rm file.txt`
    - `rm -r dir1`
    - `rm -rf dir1`

  - **mkdir** : Make directories

  - **echo** : Write text to file
    - `echo "Hello World" > file.txt`
    - echo "alias 'yt=ytfzf -t'" >> ~/.bashrc
    - echo "alias 'll=ls -al'" >> ~/.bashrc
    - echo "alias 'showdisk=cd /media/lcaohoanq/ ; ls -al'" >> ~/.bashrc

  - **touch** : Create file
    - `touch file.txt`

  - **nano** : Text editor
    - `nano file.txt`

  - **unzip** : Unzip files
    - `unzip file.zip`

  - **tree** : Show the current directory with the tree visualization
    ```bash
    # show everything
    tree

    # show directories only
    tree -D

    # show directories except the pattern
    tree -I "node_modules"

    # show except the pattern, directories only
    tree -I "node_modules" -D
    ```
  - **grep**: The grep command in Linux is a powerful utility used for searching plain-text data sets for lines that match a regular expression or a fixed string. It stands for "global regular expression print."
    ```bash
    # You can use grep to filter the output of apt list and only show the lines that contain "files". For example:

    sudo apt list 2>/dev/null | grep files


    # Explanation:
    # sudo apt list → lists all available packages.
    # 2>/dev/null → hides the warning messages like Listing... Done
    # grep files → shows only lines containing "files".
    
    # If you want case-insensitive search (match Files, FILES, etc.):
    
    sudo apt list 2>/dev/null | grep -i files

    # | is pipe operator: It takes the output of the command on the left and sends it as input to the command on the right

    # If you just want to count how many lines match "files", pipe the result to wc -l:
    sudo apt list 2>/dev/null | grep files | wc -l
    ```
    
    
- Power Management

```bash
# reboot
sudo reboot

# shutdown after 1 min
sudo shutdown -h

# shutdown immediately
sudo shutdown -h now

# schedule shutdown after 10 mins
sudo shutdown -P +10
```

# 2. [Advanced command]
  - chmod [arguement] : give a file specific permission
    - +x : can executable
    - 777 : give all permission (do not recommend to use)
    - 400 : read only

  - ps: show process id
    ```bash
    ps aux | grep "obs"
    ```
