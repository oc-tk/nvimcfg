return {
    "ntpeters/vim-better-whitespace",
    enabled = false,
    init = function()
      vim.g.better_whitespace_filetypes_blacklist = { "dashboard" }
      vim.g.better_whitespace_enabled = 1
      vim.g.strip_whitespace_on_save = 1
      vim.g.strip_whitespace_confirm = 0
      vim.g.strip_whitelines_at_eof = 1
      vim.g.show_spaces_that_precede_tabs = 1
    end,
  }