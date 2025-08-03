-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

-- Remap for grabbing 1 or more lines and move them as a unit
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Remap for scrolling half a page up and down, then centering screen
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- Remap for searching a term and once go to the next term, it centers screen
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Remap for when yanking a word to have that word available for paste
map("x", "<leader>p", '"_dP')

-- Delete Default Lazyvim Keymaps
unmap("n", "<C-h>")
unmap("n", "<C-j>")
unmap("n", "<C-k>")
unmap("n", "<C-l>")
