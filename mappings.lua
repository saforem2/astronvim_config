-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
-- vim.api.nvim_set_keymap('n', '0', '^', { silent = true })
-- vim.api.nvim_set_keymap('n', '<C-J>', 'J', { silent = true })
-- vim.api.nvim_set_keymap('n', 'X', [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]], { silent = true })                                                                                                                   
-- vim.api.nvim_set_keymap('n', '<C-S>', [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]], { silent = true })                                                                                                               
-- vim.api.nvim_set_keymap('n', '<C-k>', [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]], { silent = true })                                                                                                               
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["0"] = { "^", desc = "Beginning of line"},
    ["<C-J>"] = { "J", desc="Join line" },
    ["X"] = {
      [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]],
      desc="Split line"
    },
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(
          bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
