vim.opt.encoding = 'UTF-8'
vim.opt.guicursor = ""
vim.opt.mouse = 'a'

vim.opt.nu = true
vim.opt.relativenumber = false

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.termguicolors = true

vim.keymap.set('n', '<space>U', ':UndotreeToggle<CR>')
vim.keymap.set('n', '<C-n>', ':Neotree<CR>')
vim.keymap.set('n', '<space>M', ':Mason<CR>')
vim.keymap.set('n', '<space>C', ':lua ColorMyPencils()<CR>')
vim.keymap.set('n', '<space>L', ':LazyGit<CR>')

-- vim.g.lazygit_floating_window_windlend = 0 "transparency of floating window"
