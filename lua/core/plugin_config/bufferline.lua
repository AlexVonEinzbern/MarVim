vim.opt.termguicolors = true
local bufferline = require('bufferline')
bufferline.setup {
  options = {
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    indicator = {
      icon = '',
      style = 'icon',
    },
    style_preset = {
      bufferline.style_preset.no_italic,
      -- bufferline.style_preset.no_bold,
    },
  },
}
