vim.scriptencodind = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.cmd(":set laststatus=3")
vim.cmd(":se cursorline")
vim.cmd("set guicursor=n-v-c-i:block")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set number relativenumber")
vim.cmd("set nu rnu")
vim.cmd("set modifiable")

vim.g.mapleader = " "

-- tmux vnim navigator 
vim.keymap.set('n', '<C-k>', '"wincmd k<CR>')
vim.keymap.set('n', '<C-j>', '"wincmd j<CR>')
vim.keymap.set('n', '<C-h>', '"wincmd h<CR>')
vim.keymap.set('n', '<C-l>', '"wincmd l<CR>')

-- Save file with <leader>w (you can change <leader> to your preferred leader key)
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })

-- Quit Neovim with <leader>q
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })

-- Save and Quit with <leader>wq
vim.api.nvim_set_keymap('n', '<leader>wq', ':wq<CR>', { noremap = true, silent = true })

-- Force Quit without saving with <leader>q!
vim.api.nvim_set_keymap('n', '<leader>q!', ':q!<CR>', { noremap = true, silent = true })

-- Save and then delete the buffer with <leader>bd
vim.api.nvim_set_keymap('n', '<leader>bd', ':w<CR>:bd<CR>', { noremap = true, silent = true })


