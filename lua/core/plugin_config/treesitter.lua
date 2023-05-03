require'nvim-treesitter.configs'.setup{
  -- A list of parser names, or 'all'
  ensure_installed = {"c", "cpp", "javascript", "typescript", "go", "rust", "python"},

  -- Install parsers synchroously (only aplly to ensure_installed)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable =true,
  },
}
