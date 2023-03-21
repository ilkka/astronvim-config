-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    ['<leader><leader>f'] = {
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", desc =
    "Hop forward to char" },
    ['<leader><leader>F'] = {
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", desc =
    "Hop backward to char" },
    ['<leader><leader>w'] = {
      "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.START })<cr>", desc =
    "Hop to beginning of word" },
    ['<leader><leader>e'] = {
      "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END })<cr>", desc =
    "Hop to end of word" },
    ['<leader><leader>s'] = { "<cmd>HopPattern<cr>", desc = "Hop to pattern" },
    ['<leader><leader>j'] = { "<cmd>HopLineAC<cr>", desc = "Hop to line below" },
    ['<leader><leader>k'] = { "<cmd>HopLineBC<cr>", desc = "Hop to line above" },
    ['<leader><leader>a'] = { "<cmd>HopAnywhere<cr>", desc = "Hop anywhere" },
  },
  v = {
    ['<leader><leader>w'] = {
      "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.START })<cr>", desc =
    "Hop to beginning of word" },
    ['<leader><leader>e'] = {
      "<cmd> lua require'hop'.hint_words({ hint_position = require'hop.hint'.HintPosition.END })<cr>", desc =
    "Hop to end of word" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
