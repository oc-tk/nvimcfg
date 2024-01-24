-- Keymaps are automatically loaded on the VeryLazy eventmap
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


-- Quit
vim.keymap.set("n", "<leader>qq", ":quit<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>qa", "<cmd>qa<cr>", { desc = "Quit all" })


-- Tabs
-- vim.keymap.set("n", "<leader>tt", ":$tabnew<CR>", { desc = "Tab new" })
-- vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Tab close" })
-- vim.keymap.set("n", "<C-l>", ":tabn<CR>", { desc = "Tab next" })
-- vim.keymap.set("n", "<C-h>", "tabp<CR>", { desc = "Tab prev" })
-- vim.keymap.set("n", "<C-Right>", ":tabn<CR>", { desc = "Tab next" })
-- vim.keymap.set("n", "<C-Left>", "tabp<CR>", { desc = "Tab prev" })

-- vim.keymap.set("n", "<leader>nn", ":Neotree<CR>", { desc = "Neotree" })

-- local nmap = function(keys, func, desc)
--   if desc then
--     desc = 'LSP: ' .. desc
--   end

--   vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
-- end

-- nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')
-- nmap('K', vim.lsp.buf.hover, 'Hover Documentation')