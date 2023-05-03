local lsp = require('lsp-zero').preset("recommended")

lsp.ensure_installed({ "tsserver", "gopls", "pyright", "rust_analyzer", "clangd"})

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)


	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
  vim.keymap.set("n", "gr", require('telescope.builtin').lsp_references, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)

end)

lsp.setup()
