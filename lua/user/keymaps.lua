local opts = {noremap = true, silent = true}
local term_opts = {silent = true}

-- shortten the keympa function
local keymap = vim.api.nvim_set_keymap

-- set the keymap leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- toggle tree like structure
-- change for nvim tree
--keymap("n", "<Leader>e", ":Lex 30<cr>", opts)

-- toggle terminal
keymap("n", "<Leader>t", ":terminal<cr>", opts)


-- better window naviagtion
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

-- resize window with arrow key
keymap("n", "<C-UP>", ":resize +2<cr>", opts)
keymap("n", "<C-Down>", ":resize -2<cr>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<cr>", opts)

--stay in indent mode
-- navigate buffers
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)


--Visual--
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)
-- move text
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)
--keymap("v", "<A-j>", ":m '>+3<cr>gv=gv", opts)
--keymap("v", "<A-k>", ":m '<-2<cr>gv=gv", opts)
-- set the regiester of the del to not be 
--keymap("v", "p", '"_dp', opts)
keymap("v", "d", '"_d', opts)
keymap("n", "d", '"_d', opts)
keymap("v", "x", '"_x', opts)
keymap("n", "x", '"_x', opts)


--termnial
--better terminal naviagtion
keymap("t", "<Esc>", "<C-\\><C-N>", term_opts)
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)

