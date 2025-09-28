# My Neovim Config

[![Neovim](https://img.shields.io/badge/Editor-Neovim-blue)](https://neovim.io/)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

自分用の Neovim 設定（Lua + lazy.nvim）です。  
LSP, CMP, NvimTree, Bufferline などを含み、C/C++ と Python(予定) に対応しています。

## 機能

- **プラグイン管理**: lazy.nvim
- **ステータスバー**: lualine
- **バッファ/タブ管理**: bufferline.nvim
- **ファイルツリー**: nvim-tree.lua
- **補完**: nvim-cmp + LuaSnip
- **LSP**: C/C++ (clangd), Python (pyright)
- **カラースキーム**: vim のテーマに lualine/bufferline を統一

## インストール

```bash
git clone https://github.com/ochiaikouta/nvim-config.git ~/.config/nvim
```
```bash
nvim
```
```vim
:Lazy sync
```
## キーマッピング
- `<C-n>`: NvimTree トグル
- `<Tab>` / `<S-Tab>`: 補完メニュー移動
- `<C-h/j/k/l>`: ウィンドウ移動
- `:w` / `:q` などは Vim 標準

## カスタマイズ
~/.config/nvim/lua/plugins/ 以下にプラグインごとの設定ファイルがあります。
自分用の設定は ~/.config/nvim/lua/custom/ に追加すると安全です。

## ライセンス

MIT

