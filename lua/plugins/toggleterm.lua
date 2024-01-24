return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
      size = 15,
      hide_numbers = true,
      direction = "horizontal",
      open_mapping = [[<c-\>]],
      persist_size = false,
      inster_mappings = true,
      start_in_insert = true,
      shading_factor = 2,
      shade_terminals = 2,
      shade_filetypes = {},
      close_on_exit = true,
      float_opts = {
          border = "rounded",
          winblend = 0,
          highlights = {
            border = "Normal",
            background = "Normal",
          },
      },
  },
  config = true,
}