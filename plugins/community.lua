local utils = require("astronvim.utils")
return {
  "AstroNvim/astrocommunity",
  -- { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.python-ruff", enabled = true },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.colorscheme.nightfox-nvim", enabled = false },
  { import = "astrocommunity.colorscheme.kanagawa-nvim", enabled = true },
  { import = "astrocommunity.colorscheme.github-nvim-theme", enabled = true },
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { -- further customize the options set by the community
    "catppuccin",
    opts = {
      integrations = {
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        overseer = true,
        lsp_trouble = true,
        rainbow_delimiters = true,
      },
    },
  },
  -- { import = "astrocommunity.completion.copilot-lua" },
  -- { -- further customize the options set by the community
  --   "copilot.lua",
  --   opts = {
  --     suggestion = {
  --       keymap = {
  --         accept = "<C-l>",
  --         accept_word = false,
  --         accept_line = false,
  --         next = "<C-.>",
  --         prev = "<C-,>",
  --         dismiss = "<C/>",
  --       },
  --     },
  --   },
  -- },
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      -- colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },

  -- {
  --   {
  --     "nvim-treesitter/nvim-treesitter",
  --     opts = function(_, opts)
  --       if opts.ensure_installed ~= "all" then
  --         opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "python", "toml" })
  --       end
  --     end,
  --   },
  --   {
  --     "williamboman/mason-lspconfig.nvim",
  --     opts = function(_, opts)
  --       opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "pyright", "ruff_lsp" })
  --     end,
  --   },
  --   {
  --     "jay-babu/mason-null-ls.nvim",
  --     opts = function(_, opts) opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "ruff" }) end,
  --   },
  --   {
  --     "jay-babu/mason-nvim-dap.nvim",
  --     opts = function(_, opts)
  --       opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, "python")
  --       if not opts.handlers then opts.handlers = {} end
  --       opts.handlers.python = function() end -- make sure python doesn't get set up by mason-nvim-dap, it's being set up by nvim-dap-python
  --     end,
  --   },
  --   {
  --     "linux-cultist/venv-selector.nvim",
  --     opts = {},
  --     keys = { { "<leader>lv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" } },
  --   },
  --   {
  --     "mfussenegger/nvim-dap-python",
  --     dependencies = "mfussenegger/nvim-dap",
  --     ft = "python", -- NOTE: ft: lazy-load on filetype
  --     config = function(_, opts)
  --       local path = require("mason-registry").get_package("debugpy"):get_install_path() .. "/venv/bin/python"
  --       require("dap-python").setup(path, opts)
  --     end,
  --   },
  -- }
}
--   return {
--   -- Add the community repository of plugin specifications
--   "AstroNvim/astrocommunity",
--   -- example of imporing a plugin, comment out to use it or add your own
--   -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
--
--   -- { import = "astrocommunity.colorscheme.catppuccin" },
--   -- { import = "astrocommunity.completion.copilot-lua-cmp" },
-- }
