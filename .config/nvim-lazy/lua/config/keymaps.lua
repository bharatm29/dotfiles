-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Indent on pressing tab and shift-tab
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<Tab>", ">>", opts)
vim.keymap.set("n", "<S-Tab>", "<<", opts)
vim.keymap.set("v", "<Tab>", ">gv", opts)
vim.keymap.set("v", "<S-Tab>", "<gv", opts)

-- harpoon keymaps
local mark = require("harpoon.mark");
local ui = require("harpoon.ui");

vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "[A]dd to harpoon" })
vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu, { desc = "Toggle [H]arpoon" })

-- clears the quickfix list
vim.keymap.set("n", "<leader>xc", ":cexp []<CR>", {desc = "[C]lears quickfix list"})
vim.keymap.set("n", "<leader>nf", "<cmd>Neotree focus<cr>", {desc = "[N]eotree [F]ocus"})
