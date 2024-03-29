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
    end
  },
  {
    'https://tpope.io/vim/fugitive.git',
    lazy = false
  },
  {
    "machakann/vim-sandwich",
    event = "BufRead"
  },
}
