local set = vim.opt

vim.cmd[[colorscheme dracula]]
vim.cmd[[hi FloatermBorder guifg=#bd93f9]]
vim.cmd[[cabbrev h vert bo vert bo h]]
vim.cmd[[set fillchars=vert:\ ]]
vim.g.floaterm_borderchars = "─│─│╭╮╯╰"
vim.g.dracula_italic_comment = false

set.nu = true
set.relativenumber = true
set.nuw = 4
set.signcolumn = 'yes:2'
set.shiftwidth = 2
set.hlsearch = true
set.incsearch = true
set.showmode = false
set.mouse:remove({'a'})
