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
MarVim also uses [treesitter](https://tree-sitter.github.io/tree-sitter/) as parser. To add new parsers, edit `nvim/lua/core/plugin_config/treesitter.lua` file the following line:

```
ensure_installed = {"c", "cpp", "javascript", "typescript", "go", "rust", "python"},
```


## Uninstall on Linux

```
rm -rf ~/.config/nvim
rm -rf ~/local/share/nvim
```
