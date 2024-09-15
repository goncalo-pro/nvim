vim.g.mapleader = " "


local km = vim.keymap -- for conciseness

km.set("i", "jk", "<ESC>", {desc = "Exit insert mode with jk"})
km.set("n", "<leader>pv", vim.cmd.Ex, {desc = "Launch explorer with <leader>pv"})
km.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear search highlights"})
km.set("n", "<leader>la", vim.cmd.Lazy )
km.set("n", "<leader>ru", vim.cmd.RunCode)

km.set("n", "<leader>rp", ":w<CR>:!python main.py<CR>") 
km.set("n", "<leader>rr", ":w<CR>:!cargo run<CR>")
km.set("n", "<leader>rl", ":w<CR>:!lilypond main.ly<CR>:!.\\main.pdf<CR>")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>pb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ph', builtin.help_tags, {})

-- line movement
km.set("n", "j", 'gj')
km.set("n", "k", 'gk')

