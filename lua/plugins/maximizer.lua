return {
    "szw/vim-maximizer",
    keys = {
      { "<C-w>z", ":MaximizerToggle!<CR>", silent = true, desc = "Maximize buffer" },
    },
    init = function()
      vim.g.maximizer_set_default_mapping = 0
      vim.g.maximizer_set_mapping_with_bang = 1
    end,
  }