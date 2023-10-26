return {
  {
    'echasnovski/mini.animate',
    config = function()
      require('mini.animate').setup()
    end,
  },
  {
    'echasnovski/mini.colors',
    config = function()
      require('mini.colors').setup()
    end,
  },
  -- {
  --   "echasnovski/mini.indentscope",
  --   version = false, -- wait till new 0.7.0 release to put it back on semver
  --   event = "LazyFile",
  --   opts = {
  --     -- symbol = "▏",
  --     symbol = "│",
  --     options = { try_as_border = true },
  --   },
  --   init = function()
  --     vim.api.nvim_create_autocmd("FileType", {
  --       pattern = {
  --         "help",
  --         "alpha",
  --         "dashboard",
  --         "neo-tree",
  --         "Trouble",
  --         "lazy",
  --         "mason",
  --         "notify",
  --         "toggleterm",
  --         "lazyterm",
  --       },
  --       callback = function()
  --         vim.b.miniindentscope_disable = true
  --       end,
  --     })
  --   end,
  -- },
}