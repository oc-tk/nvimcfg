return {
    "nvim-neotest/neotest",
    opts = {},
    keys = {
      { "<leader>tt", false },
      {
        "<leader>tf",
        function()
          require("neotest").run.run(vim.fn.expand("%"))
        end,
        desc = "Run File",
      },
    },
  }