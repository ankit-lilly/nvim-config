vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jj", "<ESC>")
keymap.set("n", "<leader>t", "<cmd>NvimTreeToggle<cr>")
keymap.set("n", "<C-g>", "<cmd>NvimTreeFindFileToggle<cr>")

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<C-b>", "<cmd>b#<cr>")
keymap.set("n", "<leader>b", "<cmd>b#<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope find_buffers<cr>")

local opts = { noremap=true, silent=true }

keymap.set("n", "gd", "<Plug>(coc-definition)", opts)
keymap.set("n", "gy", "<Plug>(coc-type-definition)", opts)
keymap.set("n", "gi", "<Plug>(coc-implementation)", opts)
keymap.set("n", "gr", "<Plug>(coc-references)", opts)

keymap.set("n", "<leader>p", "<cmd>CocCommand editor.action.formatDocument<cr>", opts)
keymap.set("n", "<leader>cf", "<cmd>CocCommand eslint.executeAutofix<cr>")
