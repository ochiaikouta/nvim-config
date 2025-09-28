return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "lua", "python", "c", "cpp", "bash", "markdown",
        "rust", "typescript", "javascript"
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    }
  end
}

