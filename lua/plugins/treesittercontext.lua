return {
    "nvim-treesitter/nvim-treesitter-context",
    init = function()
      -- Needed for trees-context floating win border
      -- https://github.com/neovim/neovim/issues/17996#issuecomment-1186208986
      vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#021316" })
    end,
  }