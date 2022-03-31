local map = vim.api.nvim_set_keymap
local def_opt = {noremap = true, silent = true}

-- map the leader key
map("n", "<space>", "<nop>", def_opt)
vim.g.mapleader = " "

-- center search results
map("n", "n", "nzz", def_opt)
map("n", "N", "Nzz", def_opt)

-- better indenting
map("v", "<", "<gv", def_opt)
map("v", ">", ">gv", def_opt)

-- resizing panes
map("n", "<c-left>", ":vertical resize -1<cr>", def_opt)
map("n", "<c-right>", ":vertical resize +1<cr>", def_opt)
map("n", "<c-down>", ":resize +1<cr>", def_opt)
map("n", "<c-up>", ":resize -1<cr>", def_opt)

-- move window
map("n", "<s-left>", ":winc H<cr>", def_opt)
map("n", "<s-right>", ":winc L<cr>", def_opt)
map("n", "<s-up>", ":winc K<cr>", def_opt)
map("n", "<s-down>", ":winc J<cr>", def_opt)

-- switch window
map("n", "<c-k>", ":winc k<cr>", def_opt)
map("n", "<c-h>", ":winc h<cr>", def_opt)
map("n", "<c-l>", ":winc l<cr>", def_opt)
map("n", "<c-j>", ":winc j<cr>", def_opt)

-- buffers
map("n", "H", ":bprevious!<cr>", def_opt)
map("n", "L", ":bnext!<cr>", def_opt)
map("n", "<c-w>", ":Bdelete<cr>", def_opt)
map("n", "gb", ":BufferLinePick<cr>", def_opt)

-- nvim-tree
map("n", "<c-n>", ":NvimTreeToggle<cr>", def_opt)


-- app shortcut
map("n", "<c-c>", ":nohlsearch<cr>", def_opt)
map("n", "<c-s>", ":w<cr>", def_opt)
map("n", "<c-q>", ":q<cr>", def_opt)
map("n", "<c-x>", ":qall<cr>", def_opt)

-- move up down
map("n", "<a-j>", ":m .+1<cr>", def_opt)
map("n", "<a-k>", ":m .-2<cr>", def_opt)
map("v", "<a-j>", ":m '>+1<CR>gv=gv", def_opt)
map("v", "<a-k>", ":m '<-2<CR>gv=gv", def_opt)
map("i", "<a-j>", "<Esc>:m .+1<CR>==gi", def_opt)
map("i", "<a-k>", "<Esc>:m .-2<CR>==gi", def_opt)

-- floaterm
map("n", "<f1>", ":FloatermNew! --height=0.9 --width=0.9 --cwd=<root><cr>", def_opt)

-- translate
map("n", "<c-t>", "viw:Translate zh -source=en -output=floating<cr>", def_opt)
