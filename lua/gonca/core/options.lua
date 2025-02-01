vim.g.have_nerd_font = true

vim.opt.number = true         -- show line number
vim.opt.relativenumber = true -- show relative line numbers
vim.opt.signcolumn = "yes"    -- show sign column

vim.opt.showmode = false      -- don't show the current mode


-- Define number of spaces in tab
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Sync clipboard between OS and Neovim
vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
end)

-- Enable indent in line break
vim.opt.breakindent = true
-- Enable line break
vim.opt.linebreak = true
-- Enable wrapping in line break
vim.opt.wrap = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching unless \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Set how neovim will display certain whitespace characters in the editor
vim.opt.list = false
-- vim.opt.listchars = { tab = ' ', trail = '·', nbsp = '␣' }

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 10

-- Use termguicolors
vim.opt.termguicolors = true
-- Set dark
vim.opt.background = "dark"
