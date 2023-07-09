local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = true
opt.linebreak = true
opt.list = false



-- search
opt.ignorecase = true
opt.smartcase = true

opt.background = "dark"
opt.termguicolors = true
--opt.signcolumn = "yes"


-- Copy


opt.clipboard:append("unnamedplus")

opt.splitbelow = true
opt.splitright = true
opt.iskeyword:append("-")
