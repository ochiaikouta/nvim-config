-- 基本キーマップ
local map = vim.keymap.set

-- ウィンドウ移動
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- バッファ移動
map("n", "<C-Right>", ":bnext<CR>")    -- 次のバッファ
map("n", "<C-Left>", ":bprevious<CR>") -- 前のバッファ


local opts = { noremap = true, silent = true }

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

-- 補完
vim.keymap.set("i", "<C-Space>", function() require("cmp").complete() end, opts)

