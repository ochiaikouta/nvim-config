-- lazy.nvim のパス
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- lazy.nvim が未インストールなら自動でクローン
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

-- runtimepath に追加
vim.opt.rtp:prepend(lazypath)

-- 基本設定
require("options")   -- options.lua
require("keymaps")   -- keymaps.lua

-- プラグイン設定を読み込む
require("lazy").setup("plugins")

-- カラースキーム
vim.cmd.colorscheme("vim")

-- 補完のテーマ
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#2e2e2e", fg = "#ffffff" })      -- 補完メニュー全体
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#4b4b4b", fg = "#ffffff" })   -- 選択中
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#6c6c6c" })                -- optional: スクロールバー

