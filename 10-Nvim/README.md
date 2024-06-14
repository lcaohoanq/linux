# [Nvim]
## Installation
### LazyVim
- https://dev.to/zt4ff_1/effective-neovim-setup-a-beginners-guide-1i81
- Install nvim 0.10.0
```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

export PATH="$PATH:/opt/nvim-linux64/bin"
echo "alias nvim='/opt/nvim-linux64/bin/nvim'" >> ~/.bashrc
source ~/.bashrc

# whereis nvim
# nvim: /opt/nvim-linux64/bin/nvim

# clone the lazyvim repo
git clone https://github.com/LazyVim/starter ~/.config/nvim
```
- Press Install(I) for the first time

- Bug:
  - Error detected while processing User Autocommands for "VeryLazy":                                                                                            
    No C compiler found! "cc", "gcc", "clang", "cl", "zig" are not executable.
    ```bash
    sudo apt update
    sudo apt install build-essential
    ```

## Using
- Default Nvim/Vim start with `Normal` Mode, we switch to `Insert` Mode by type any text on keyboard one time, vice versa we need to type `Esc` keyboard

- https://www.tutorialspoint.com/vim/vim_navigating.htm

### Normal Mode
1. [Basic Navigation]
- h and l (Move the current cursor to `left or right` one position)
- j and k (Move the current cursor to `down or up` one position)
2. [Move the line]
- Alt + j (Move the current line `down`)
- Alt + k (Move the current line `up`)

- dd: delete one line
- u: undo ~ Ctrl + Z

- :bprev
- :bnext

- :n: jump to nth line
- :0: jump to the start of file
- :$: jump to the end of file
