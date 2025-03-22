-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "n", "v" }, "<C-d>", "<C-d>zz", { noremap = true, desc = "Page Down" })
map({ "n", "v" }, "<C-u>", "<C-u>zz", { noremap = true, desc = "Page Up" })
map("i", "kj", "<Esc>")
map({ "n", "v" }, "<Leader>ss", ":write<CR>", { noremap = true, desc = "Save Buffer" })
map({ "n", "v" }, "<Leader>sa", ":wa<CR>", { noremap = true, desc = "Save All Buffers" })
map("n", "<Enter>", "o<C-c>", { noremap = true })
map("n", "<S-Enter>", "O<C-c>", { noremap = true })

map(
    { "n", "v" },
    "<Leader>ee",
    ":e ~/.config/nvim/lua/config/keymaps.lua<CR>",
    { noremap = true, desc = "Edit keybinds" }
)

map({ "n", "v" }, "<Leader>er", ":so %<CR>", { noremap = true, desc = "Reload keybinds" })
