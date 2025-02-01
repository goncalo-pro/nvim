vim.g.mapleader = " "


local km = vim.keymap -- for conciseness

km.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
km.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Launch explorer with <leader>pv" })
km.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

km.set("n", "<leader>la", vim.cmd.VimtexCompile)
km.set("n", "<leader>tt", vim.cmd.TransparentToggle, { desc = "Toggle transparemcy of neovim" })


-- WINDOWS
km.set('n', '<C-h>', '<C-w>h', { desc = "Move cursor to left split" })
km.set('n', '<C-l>', '<C-w>l', { desc = "Move cursor to right split" })
km.set('n', '<C-k>', '<C-w>k', { desc = "Move cursor to up split" })
km.set('n', '<C-j>', '<C-w>j', { desc = "Move cursor to down split" })


-- TELESCOPE
local builtin = require('telescope.builtin')
km.set('n', '<leader>pf', builtin.find_files, {})
km.set('n', '<leader>pr', builtin.oldfiles)    -- recent files
km.set('n', '<leader>pc', builtin.grep_string) -- search word under cursor
km.set('n', '<leader>pg', builtin.live_grep, {})
km.set('n', '<leader>pb', builtin.buffers, {})
km.set('n', '<leader>ph', builtin.help_tags, {})
km.set("n", "<leader>pt", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })


--NVIM TREE
km.set('n', '<leader>pe', vim.cmd.NvimTreeToggle, { desc = "Toggle nvim-tree" })


-- TODO
local todo_comments = require("todo-comments")
km.set("n", "]t", function()
    todo_comments.jump_next()
end, { desc = "Next todo comment" })
km.set("n", "[t", function()
    todo_comments.jump_prev()
end, { desc = "Previous todo comment" })


-- line movement
km.set("n", "j", 'gj')
km.set("n", "k", 'gk')
