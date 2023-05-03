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
MarVim also uses [treesitter](https://tree-sitter.github.io/tree-sitter/) as parser. To add new parsers, edit in `nvim/lua/core/plugin_config/treesitter.lua` the following line:

```
ensure_installed = {"c", "cpp", "javascript", "typescript", "go", "rust", "python"},
```
For the autocompletion, we use [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim) which used `Mason` in the background. To install a new lsp run `:Mason` and select the language with `I`. By default we have some languages already installed, you can add manually any language by editing `nvim/lua/core/plugin_config/lsp_config.lua` file

```
lsp.ensure_installed({ "tsserver", "gopls", "pyright", "rust_analyzer", "clangd" })
```
Look [mason-lspconfig documentation](https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers) to see all lsp-servers available.

## Uninstall on Linux

```
rm -rf ~/.config/nvim
rm -rf ~/local/share/nvim
```
