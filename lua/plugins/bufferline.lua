-- lua/plugins/bufferline.lua
return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup {
      options = {
        mode = "buffers", -- バッファ一覧を表示
        numbers = "none", -- バッファ番号の表示方法: "none", "ordinal", "buffer_id"
        diagnostics = "nvim_lsp", -- LSP診断を表示 (エラー数とか)
        separator_style = "slant", -- "slant", "padded_slant", "thick", "thin"
        show_close_icon = false, -- 全体を閉じる✕を消す
        show_buffer_close_icons = true, -- 各バッファの✕は残す
      },
    }
  end,
}

