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

  - **rm** : Remove files and directories
    - `rm file.txt`
    - `rm -r dir1`
    - `rm -rf dir1`

  - **mkdir** : Make directories

  - **echo** : Write text to file
    - `echo "Hello World" > file.txt`

  - **touch** : Create file
    - `touch file.txt`

  - **nano** : Text editor
    - `nano file.txt`
    - `Ctrl + X` : Exit
    - `Ctrl + O` : Save

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
  - **sudo reboot** : Reboot system
  - **sudo shutdown -h now** : Shutdown immediately
  - **sudo shutdown -P +10** : (10mins)


# 2. [Advanced command]
  - chmod [arguement] : give a file specific permission
    - +x : can executable
    - 777 : give all permission (do not recommend to use)
    - 400 : read only