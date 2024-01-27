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
  -- vim.api.nvim_set_option_value('history', 10000),
  vim.api.nvim_set_option_value('history', 10000, {}),
  -- vim.api.nvim_command('set runtimepath')
  vim.opt.runtimepath:append(',~/.config/nvim/lua/user/highlights'),
  vim.opt.runtimepath:append(',~/.local/share/nvim/runtime'),
  vim.opt.runtimepath:append(',/opt/homebrew/opt/fzf'),
  vim.opt.runtimepath:append(',~/.local/share/nvim/runtime/colors'),
  vim.opt.runtimepath:append(',~/.config/nvim/lua/user/highlights'),
  -- vim.api.nvim_eval('set rtp+=~/.local/share/nvim/runtime')
  -- vim.api.nvim_eval('set rtp+=/opt/homebrew/opt/fzf')
  -- set rtp+=/opt/homebrew/opt/fzf
  -- vim.api.nvim_eval('~/.local/share/nvim/runtime/colors')
  -- vim.api.nvim_eval('~/.config/nvim/lua/user/highlights')
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
  --     lsp = {
  --     config = {
  --       lua_ls = {
  --         settings = {
  --           Lua = {
  --             format = { enable = false },
  --           },
  --         },
  --       },
  --     },
  --   },
  -- }
  lsp = {
    config = {
      -- lua_ls {
      --   settings = {
      --     Lua = {
      --       format = {
      --         enable = false
      --       },
      --     }
      --   }
      -- }
    },
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
      vim.api.nvim_buf_set_keymap(0, 'n', '<C-c>', ":lua require(notify).dismiss()<cr>", { silent = false })
    end,
  }),

  -- require("notify").setup({
  --     background_colour = "#1f1f1f",
  -- }),

  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    local tsconfig = function()
      local configs = require('nvim-treesitter.configs')
      configs.setup({ highlight = { enable = true } })
    end
    tsconfig()
    -- Example for configuring Neovim to load user-installed installed Lua rocks:
    -- package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/magick/init.lua;"
    -- package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/lua;"
    package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
    package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"
    -- preselect = require('cmp').PreselectMode.None
    vim.o.completeopt = "menuone,noselect,preview"
    -- v.opt.runtimepath:append(',~/.local/share/nvim/runtime')
    vim.api.nvim_eval('set rtp+=~/.local/share/nvim/runtime')
    vim.api.nvim_eval('set rtp+=/opt/homebrew/opt/fzf')
    -- set rtp+=/opt/homebrew/opt/fzf
    vim.api.nvim_eval('set rtp+=~/.local/share/nvim/runtime/colors')
    vim.api.nvim_eval('set rtp+=~/.config/nvim/lua/user/highlights')
    -- vim.api.nvim_eval('let g:qs_highlight_on_keys = ["f", "F", "t", "T"]')
    -- vim.api.nvim_eval('let g:jukit_mappings_ext_enabled = ["py", "ipynb"]')
    -- vim.api.nvim_eval('let g:jukit_layout=-1')
    vim.g.qs_highlight_on_keys = {"f", "F", "t", "T"}
    vim.g.jukit_mappings_ext_enabled = {"py", "ipynb"}
    vim.g.jukit_layout = -1
    local opts = {noremap=true, silent=true}
    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
    vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)
    -- Use an on_attach function to only map the following keys
    -- after the language server attaches to the current buffer
    local on_attach = function(client, bufnr)
      -- Enable completion triggered by <c-x><c-o>
      vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
      -- Mappings.
      -- See `:help vim.lsp.*` for documentation on any of the below functions
      local bufopts = { noremap=true, silent=true, buffer=bufnr }
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
      vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
      vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
      vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
      vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end, bufopts)
      vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
      vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
      vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
      vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
    end

    -- Configure `ruff-lsp`.
    -- See: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#ruff_lsp
    -- For the default config, along with instructions on how to customize the settings
    require('lspconfig').ruff_lsp.setup {
      on_attach = on_attach,
      init_options = {
        settings = {
          -- Any extra CLI arguments for `ruff` go here.
          args = {},
        }
      }
    }
    -- vim.api.nvim_eval([[
    --     let g:jukit_layout = {
    --         \'split': 'horizontal',
    --         \'p1': 0.6,
    --         \'val': [
    --             \'file_content',
    --             \{
    --                 \'split': 'vertical',
    --                 \'p1': 0.6, \'val': ['output', 'output_history']
    --             \}
    --         \]
    --     \}
    -- ]])
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
