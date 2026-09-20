-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set
local del = vim.keymap.del

-- Disable default move lines keymaps
for _, mode in ipairs({ "n", "i", "v" }) do
  del(mode, "<A-j>")
  del(mode, "<A-k>")
end

-- Move cursor with hjkl in INSERT mode
set("i", "<C-h>", "<Left>", { desc = "Move left", noremap = true })
set("i", "<C-j>", "<Down>", { desc = "Move down", noremap = true })
set("i", "<C-k>", "<Up>", { desc = "Move up", noremap = true })
set("i", "<C-l>", "<Right>", { desc = "Move right", noremap = true })

-- Delete word before cursor
set("i", "<C-BS>", "<C-w>", { desc = "Delete word before cursor", noremap = true }) -- mordern terminals
set("i", "<C-h>", "<C-w>", { desc = "Delete word before cursor", noremap = true }) -- legacy terminals

-- Shift lines in VISUAL mode
set("v", "J", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Shift highlighted line(s) down" })
set("v", "K", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Shift highlighted line(s) up" })
