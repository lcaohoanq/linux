# Nvim 

## Install (https://neovim.io/doc/install/)
```zsh
# Pre-built archives
# The Releases page provides pre-built binaries for Linux systems.

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
```
- Then add this to your shell config (~/.bashrc, ~/.zshrc, …):
```zsh
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
```

- LazyVim require v10 above to install 
- Bug:
```bash
Error detected while processing User Autocommands for "VeryLazy":
No C compiler found! "cc", "gcc", "clang", "cl", "zig" are not executable.
```

```
sudo apt install build-essential
```

- Vim has 3 modes: `Normal`, `Insert`, `Visual`
- Default Nvim/Vim start with `Normal` Mode, we switch to `Insert` Mode by type any text on keyboard one time, vice versa we need to type `Esc` keyboard
- `Visual` Mode is used to select text, we can switch to `Visual` Mode by type `v` on keyboard

- https://www.tutorialspoint.com/vim/vim_navigating.htm

## Normal Mode

### 1. Basic Navigation

- h and l (Move the current cursor to `left or right` one position)
- j and k (Move the current cursor to `down or up` one position)

### 2. Move line

- Alt + j (Move the current line `down`)
- Alt + k (Move the current line `up`)

- dd: delete one line
- u: undo ~ Ctrl + Z

- :bprev
- :bnext

- :n: jump to nth line
- :0: jump to the start of file
- \:$: jump to the end of file
