# MarVim

## Requirements
- Nvim >= 0.8.3
- Some [Nerd Font](https://www.nerdfonts.com/) on your terminal

## Installation on Linux

```
git clone https://github.com/AlexVonEinzbern/MarVim.git ~/.config/nvim --depth 1 && nvim
```

MarVim uses [packer.nvim](https://github.com/wbthomason/packer.nvim) as plugin manager. To install all the plugins, open nvim and run:
```
:PackerSync
```

## Uninstall on Linux

```
rm -rf ~/.config/nvim
rm -rf ~/local/share/nvim
```
