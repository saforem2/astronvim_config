return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin",     -- remote to use
    channel = "nightly",    -- "stable" or "nightly"
    version = "latest",    -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly",    -- branch name (NIGHTLY ONLY)
    commit = nil,          -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil,     -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false,  -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false,     -- automatically quit the current session after a successful update
    remotes = {            -- easily add new remotes to track
      --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
      --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
      --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    },
  },

  -- -- Apply custom highlights on colorscheme change.
  -- -- Must be declared before executing ':colorscheme'.
  -- local grpid = vim.api.nvim_create_augroup('custom_highlights_sonokai', {})
  -- vim.api.nvim_create_autocmd('ColorScheme', {
  --   group = grpid,
  --   pattern = 'sonokai',
  --   callback = function()
  --     local config = vim.fn['sonokai#get_configuration']()
  --     local palette = vim.fn['sonokai#get_palette'](config.style, config.colors_override)
  --     local set_hl = vim.fn['sonokai#highlight']
  --
  --     set_hl('Visual', palette.none, palette.black)
  --     set_hl('IncSearch', palette.bg0, palette.yellow)
  --     set_hl('Search', palette.none, palette.diff_yellow)
  --   end
  -- })
  -- Set colorscheme to use
  -- colorscheme = "sam_molokai",
  -- vim.api.nvim_set_option_value('set rtp+=~/.local/share/nvim/runtime/colors'),
  -- vim.api.nvim_set_option_value('rtp+=~/.local/share/nvim/runtime'),
  -- vim.api.nvim_eval('set rtp+=~/.local/share/nvim/runtime/colors')
  -- vim.cmd('set rtp+=~/.local/share/nvim/runtime/colors'),
  colorscheme = "sam_molokai",

  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = false,
    underline = true,
  },

  lsp = {
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = false,    -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright"
    },
  },

  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = false },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },

  vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = { "*.md" },
    callback = function()
      local otter = require('otter')
      otter.activate({ 'r', 'python', 'lua' }, true)
      vim.api.nvim_buf_set_keymap(0, 'n', 'gd', ":lua require'otter'.ask_definition()<cr>", { silent = true })
      vim.api.nvim_buf_set_keymap(0, 'n', 'K', ":lua require'otter'.ask_hover()<cr>", { silent = true })
    end,
  }),

  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    -- vim.opt.runtimepath:append(',~/.local/share/nvim/runtime')
    vim.api.nvim_eval('set rtp+=~/.local/share/nvim/runtime')
    vim.api.nvim_eval('set rtp+=~/.local/share/nvim/runtime/colors')

    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
  end,
}
