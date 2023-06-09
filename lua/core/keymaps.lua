vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.number = true
vim.opt.relativenumber = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true


-- KEYMAPS

-- nvim-tree
vim.keymap.set('n', '<C-n>', ':NvimTreeFindFileToggle<CR>')

-- avoiding <Esc> key, use jj instead 
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('v', 'jj', '<Esc>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- copying code
vim.keymap.set('n', '<C-up>','yy<S-p>')
vim.keymap.set('n', '<C-down>','yyp')

-- moving code
vim.keymap.set('n', '<C-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.keymap.set('i', '<C-j>', '<Esc>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('i', '<C-k>', '<Esc>:m .-2<CR>==gi', { noremap = true, silent = true })
vim.keymap.set('v', '<C-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', '<C-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- BufferLine
vim.keymap.set('n', '<Tab>l', ':bn<CR>', {})
vim.keymap.set('n', '<Tab>h', ':bp<CR>', {})
vim.keymap.set('n', '<Tab>d', ':bd<CR>', {})

