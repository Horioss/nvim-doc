---@diagnostic disable: unused-local
local lsp = require('lsp-zero').preset({
	name = 'minimal',
	set_lsp_keymas = true,
	manage_nvim_cmp = true,
	suggest_lsp_servers = false,
})

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
})

-- local opts = {buffer = bufnr, noremap=true, silent=true}
local opts = {noremap=true, silent=false}
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float,opts)

lsp.on_attach(function(client, bufnr)
  vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition,{})
  vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation,{})
  vim.keymap.set('n', '<leader>gr', require('telescope.builtin').lsp_references,{})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action,{})
  vim.keymap.set('n', '<leader>K', vim.lsp.buf.hover,{})
end)


-- (Optinal) configure lua language server for neovim
lsp.nvim_workspace()
lsp.setup()
