-- Keymaps are automatically loaded on the VeryLazy eventmap
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


-- Quit
vim.keymap.set("n", "<leader>qq", ":quit<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>qa", "<cmd>qa<cr>", { desc = "Quit all" })


-- Tabs
vim.keymap.set("n", "<leader>tt", ":$tabnew<CR>", { desc = "Tab new" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Tab close" })
vim.keymap.set("n", "<C-l>", ":tabn<CR>", { desc = "Tab next" })
vim.keymap.set("n", "<C-h>", "tabp<CR>", { desc = "Tab prev" })
vim.keymap.set("n", "<C-Right>", ":tabn<CR>", { desc = "Tab next" })
vim.keymap.set("n", "<C-Left>", "tabp<CR>", { desc = "Tab prev" })

vim.keymap.set("n", "<leader>nn", ":Neotree<CR>", { desc = "Neotree" })

local nmap = function(keys, func, desc)
  if desc then
    desc = 'LSP: ' .. desc
  end

  vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
end

nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')
nmap('K', vim.lsp.buf.hover, 'Hover Documentation')

local function map(mode, l, r, desc)
  vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
end


map("n", "J", "<CMD>RustLsp joinLines<CR>", "[RS] Join Lines")
map("n", "K", function()
  local winid = require("ufo").peekFoldedLinesUnderCursor()
  -- :h ufo.txt
  if winid then
    local buf = vim.api.nvim_win_get_buf(winid)
    local keys = { "a", "i", "o", "A", "I", "O", "gd", "gr" }
    for _, k in ipairs(keys) do
      vim.keymap.set("n", k, "<CR>" .. k, { noremap = false, buffer = buf })
    end
  else
    vim.cmd("RustLsp hover actions")
  end
end, "[RS] Hover / Peek Fold")
map("x", "K", "<CMD>RustLsp hover range<CR>", "[RS] Hover Types")
map("n", "<leader>cm", "<CMD>RustLsp openCargo<CR>", "[RS] Open Cargo.toml")
map("n", "<leader>cK", "<CMD>RustLsp runnables<CR>", "[RS] Run/Test Code")
map("n", "<leader>ck", "<CMD>RustLsp runnables last<CR>", "[RS] Run/test Last Code")
map("n", "<leader>cp", "<CMD<RustLsp parentModule<CR>", "[RS] Go Parent Module")
map("n", "<leader>ca", "<CMD>RustLsp expandMacro<CR>", "[RS] Expand Macro")
map("n", "<leader>cd", "<CMD>RustLsp debuggables<CR>", "[RS] Run Debuggables")
map("n", "<leader>c<cr>", "<CMD>RustLsp flyCheck run<CR>", "[RS] Check Code")
map("n", "<F1>", "<CMD>RustLsp externalDocs<CR>", "[RS] Open Doc under Cursor")