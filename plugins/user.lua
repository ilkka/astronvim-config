return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require 'hop'.setup()
      vim.api.nvim_set_keymap('n', '<leader><leader>f',
        "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
        {})
      vim.api.nvim_set_keymap('n', '<leader><leader>F',
        "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
        {})
      vim.api.nvim_set_keymap('o', '<leader><leader>f',
        "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>",
        {})
      vim.api.nvim_set_keymap('o', '<leader><leader>F',
        "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>",
        {})
      vim.api.nvim_set_keymap('', '<leader><leader>t',
        "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>",
        {})
      vim.api.nvim_set_keymap('', '<leader><leader>T',
        "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>",
        {})
      vim.api.nvim_set_keymap('n', '<leader><leader>w',
        "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.START })<cr>", {})
      vim.api.nvim_set_keymap('v', '<leader><leader>w',
        "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.START })<cr>", {})
      vim.api.nvim_set_keymap('o', '<leader><leader>w',
        "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.START, inclusive_jump = true })<cr>",
        {})
      vim.api.nvim_set_keymap('n', '<leader><leader>e',
        "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END })<cr>", {})
      vim.api.nvim_set_keymap('v', '<leader><leader>e',
        "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END })<cr>", {})
      vim.api.nvim_set_keymap('o', '<leader><leader>e',
        "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END, inclusive_jump = true })<cr>",
        {})
      vim.api.nvim_set_keymap('n', '<leader><leader>s', "<cmd>HopPattern<cr>", {})
      vim.api.nvim_set_keymap('n', '<leader><leader>j', "<cmd>HopLineAC<cr>", {})
      vim.api.nvim_set_keymap('n', '<leader><leader>k', "<cmd>HopLineBC<cr>", {})
      vim.api.nvim_set_keymap('n', '<leader><leader>a', "<cmd>HopAnywhere<cr>", {})
    end
  },
  {
    'https://tpope.io/vim/fugitive.git',
    lazy = false
  },
}
