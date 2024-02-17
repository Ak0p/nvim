local P = {}
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --

-- Telescope

keymap("n", "<leader>f", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<CR>", opts)

-- Window Splitting

keymap("n", "<leader>h", "<C-w>s", opts)
keymap("n", "<leader>v", "<C-w>v", opts)

-- Window control

keymap("n", "<C-r>", "<C-w>r", opts) -- rotate windows
keymap("n", "<C-x>", "<C-w>x", opts) -- exchange windows
keymap("n", "<C-t>", "<C-w>t", opts) -- exchange windows
keymap("n", "<C-=>", "<C-w>\\=", opts) -- resize windows to be equal


-- NvimTree
keymap("n", "<leader>e", ":NvimTreeOpen<cr>", opts)
keymap("n", "<leader>c", ":NvimTreeClose<cr>", opts)

-- Better window navigation

keymap("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>", opts)
keymap("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>", opts)
keymap("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>", opts)
keymap("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>", opts)

-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)
--
-- Resize with arrows
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "tk", ":bnext<CR>", opts)
keymap("n", "tj", ":bprevious<CR>", opts)
keymap("n", "th", ":bfirst<CR>", opts)
keymap("n", "tl", ":blast<CR>", opts)
keymap("n", "td", ":bdelete<CR>", opts)
keymap("n", "tn", ":new<CR>", opts)

-- Navigate tabs

keymap("n", "<S-k>", ":tabnext<CR>", opts)
keymap("n", "<S-j>", ":tabprevious<CR>", opts)
keymap("n", "<S-h>", ":tabfirst<CR>", opts)
keymap("n", "<S-l>", ":tablast<CR>", opts)
-- keymap("n", "<C-S-n>", ":tabnew<CR>", opts)

-- Insert --
-- Press jk fast to enter
--keymap("i", "jk", "<ESC>", opts)


-- Copilot
--         imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
        keymap("i", "<C-a>", "copilot#Accept(\"<CR>\")", { silent = true, script = true, expr = true })
--
--         


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Java 

-- function P.map_java_keys(bufnr)
--
-- keymap("n", "<leader>n", "<cmd>lua require'jdtls'.organize_imports()<CR>", opts)
-- keymap("n", "<leader>c", "<cmd>lua require'jdtls'.compile('incremental')", opts)
--
-- end

return P


