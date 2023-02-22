local map = vim.api.nvim_set_keymap

-- map the leader key
map("n", "<space>", "<nop>", { noremap = true, silent = true, desc = 'leader key' })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- cancel key s default function
map("n", "s", "", { noremap = true, silent = true, desc = 'cancel s' })
-- split window
map("n", "sv", ":vsp<cr>", { noremap = true, silent = true, desc = '[s]plit [v]ertical' })
map("n", "sh", ":sp<cr>", { noremap = true, silent = true, desc = '[s]plit [h]orizontal' })
-- close current
map("n", "sc", "<c-w>c", { noremap = true, silent = true, desc = '[c]lose [c]urrent' })
-- close others
map("n", "so", "<c-w>o", { noremap = true, silent = true, desc = '[c]lose [o]thers' })

-- center search results
map("n", "n", "nzz", { noremap = true, silent = true, desc = '' })
map("n", "N", "Nzz", { noremap = true, silent = true, desc = '' })

-- better indenting
map("v", "<", "<gv", { noremap = true, silent = true, desc = '' })
map("v", ">", ">gv", { noremap = true, silent = true, desc = '' })

-- switch window
map("n", "<a-up>", ":winc k<cr>", { noremap = true, silent = true, desc = 'jump to up window' })
map("n", "<a-left>", ":winc h<cr>", { noremap = true, silent = true, desc = 'jump to left window' })
map("n", "<a-right>", ":winc l<cr>", { noremap = true, silent = true, desc = 'jump to right window' })
map("n", "<a-down>", ":winc j<cr>", { noremap = true, silent = true, desc = 'jump to window below' })

-- resizing panes
map("n", "<c-left>", ":vertical resize -1<cr>", { noremap = true, silent = true, desc = '' })
map("n", "<c-right>", ":vertical resize +1<cr>", { noremap = true, silent = true, desc = '' })
map("n", "<c-down>", ":resize +1<cr>", { noremap = true, silent = true, desc = '' })
map("n", "<c-up>", ":resize -1<cr>", { noremap = true, silent = true, desc = '' })

-- buffers
map("n", "H", ":bprevious!<cr>", { noremap = true, silent = true, desc = 'move to privious buffer' })
map("n", "L", ":bnext!<cr>", { noremap = true, silent = true, desc = 'move to next buffer' })
map("n", "<c-w>", ":Bdelete<cr>", { noremap = true, silent = true, desc = 'delete current buffer' })
-- map("n", "gb", ":BufferLinePick<cr>", { noremap = true, silent = true, desc = '' })

-- app shortcut
map("n", "<c-c>", ":nohlsearch<cr>", { noremap = true, silent = true, desc = '' })
map("n", "<c-s>", ":w<cr>", { noremap = true, silent = true, desc = '' })
map("i", "<c-s>", "<esc>:w<cr>i", { noremap = true, silent = true, desc = '' })
map("n", "<c-q>", ":q<cr>", { noremap = true, silent = true, desc = '' })
map("n", "<c-x>", ":qall<cr>", { noremap = true, silent = true, desc = '' })

-- move up down
map("n", "<a-j>", ":m .+1<cr>", { noremap = true, silent = true, desc = '' })
map("n", "<a-k>", ":m .-2<cr>", { noremap = true, silent = true, desc = '' })
map("v", "<a-j>", ":m '>+1<cr>gv=gv", { noremap = true, silent = true, desc = '' })
map("v", "<a-k>", ":m '<-2<cr>gv=gv", { noremap = true, silent = true, desc = '' })
map("i", "<a-j>", "<esc>:m .+1<cr>==gi", { noremap = true, silent = true, desc = '' })
map("i", "<a-k>", "<esc>:m .-2<cr>==gi", { noremap = true, silent = true, desc = '' })

-- system copy paste
map("n", "sy", "\"+y", { noremap = true, silent = true, desc = '' })
map("n", "sp", "\"+p", { noremap = true, silent = true, desc = '' })

-- format
map("n", "<f11>", ":lua vim.lsp.buf.format()<cr>", { noremap = true, silent = true, desc = '' })
map("v", "<f12>", ":lua vim.lsp.buf.format()<cr>", { noremap = true, silent = true, desc = '' })

-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<c-u>", "9k", { noremap = true, silent = true, desc = '' })
map("n", "<c-d>", "9j", { noremap = true, silent = true, desc = '' })
map("n", "<c-k>", "4k", { noremap = true, silent = true, desc = '' })
map("n", "<c-j>", "4j", { noremap = true, silent = true, desc = '' })

-- insert mode jump to first last
map("i", "<c-h>", "<esc>I", { noremap = true, silent = true, desc = '' })
map("i", "<c-l>", "<esc>A", { noremap = true, silent = true, desc = '' })
