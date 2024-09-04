require "nvchad.mappings"
require "custom.functions"

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- close all tabs except current one
map('n', '<leader>co', ':lua require("custom.functions").close_all_except_current()<CR>', opts)

-- Select entire text
map("n", "<C-a>", "ggVG")

-- Personal ones that I use the most
map("i", "jk", "<ESC>")
map("n", "<leader>w", "<cmd> w <cr>")

-- Increment/decrement
map("n", "+", "<C-a>", opts)
map("n", "-", "<C-x>", opts)

-- Split window
map("n", "ss", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)

-- Resize window
map("n", "<C-S-h>", "<C-w><")
map("n", "<C-S-l>", "<C-w>>")
map("n", "<C-S-k>", "<C-w>+")
map("n", "<C-S-j>", "<C-w>-")

-- show file on file tree
map({"n", "v"}, "<leader>tf", ":NvimTreeFindFile<CR>")
map("n", "<leader>gn", ":Gitsigns next_hunk<CR>");
map("n", "<leader>gp", ":Gitsigns prev_hunk<CR>");


-- move a single line up and down
map('n', '<A-j>', ':m .+1<CR>==', opts)
map('n', '<A-k>', ':m .-2<CR>==', opts)

-- find function usage for a function or export
map('n', '<leader>fr', ':lua vim.lsp.buf.references()<CR>', opts)

-- toggle line wrapping
map('n', '<leader>tw', ':set wrap!<CR>', opts)

-- close split window
map('n', '<leader>cs', ':close<CR>', opts)

