return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin",     -- remote to use
    channel = "nightly",    -- "stable" or "nightly"
    -- version = "latest",    -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly",    -- branch name (NIGHTLY ONLY)
    commit = nil,          -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil,     -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false,  -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = true,     -- automatically quit the current session after a successful update
    remotes = {            -- easily add new remotes to track
      --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
      --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
      --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    },
  },
  -- Set colorscheme to use
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

  highlights = {
    -- set highlights for all themes
    -- use a function override to let us use lua to retrieve colors from highlight group
    -- there is no default table so we don't need to put a parameter for this function
    -- init = function()
    --   local get_hlgroup = require("astronvim.utils").get_hlgroup
    --   -- get highlights from highlight groups
    --   local normal = get_hlgroup "Normal"
    --   local fg, bg = normal.fg, normal.bg
    --   local bg_alt = get_hlgroup("Visual").bg
    --   local green = get_hlgroup("String").fg
    --   local red = get_hlgroup("Error").fg
    --   -- return a table of highlights for telescope based on colors gotten from highlight groups
    --   return {
    --     TelescopeBorder = { fg = bg_alt, bg = bg },
    --     TelescopeNormal = { bg = bg },
    --     TelescopePreviewBorder = { fg = bg, bg = bg },
    --     TelescopePreviewNormal = { bg = bg },
    --     TelescopePreviewTitle = { fg = bg, bg = green },
    --     TelescopePromptBorder = { fg = bg_alt, bg = bg_alt },
    --     TelescopePromptNormal = { fg = fg, bg = bg_alt },
    --     TelescopePromptPrefix = { fg = red, bg = bg_alt },
    --     TelescopePromptTitle = { fg = bg, bg = red },
    --     TelescopeResultsBorder = { fg = bg, bg = bg },
    --     TelescopeResultsNormal = { bg = bg },
    --     TelescopeResultsTitle = { fg = bg, bg = bg },
    --   }
    -- end,
  },
  -- require("neoconf").setup({}),

  polish = function()
    -- vim.opt.spell = false
    -- vim.opt.termguicolors = true
    -- vim.g['pandoc#filetypes#handled'] = {'pandoc', 'rst', 'textile', 'markdown', 'quarto'}
    -- vim.g.pandoc.filetypes.handled = {'pandoc', 'rst', 'textile', 'markdown', 'quarto'}
    -- g:pandoc#filetypes#handled = ['pandoc', 'rst', 'textile', 'markdown', 'quarto']
    -- vim.opt.spli
    vim.opt.splitright = true
    vim.opt.splitbelow = true
    vim.opt.backupdir = function(local_vim)
      return local_vim.fn.expand('~/.backup//')
    end
    vim.opt.undodir = function(local_vim)
      return local_vim.fn.expand('~/.undo//')
    end
    -- end
    -- vim.keymap.set("c", "<S-Enter>", function() require("noice").redirect(vim.fn.getcmdline()) end, { desc = "Redirect Cmdline" })
    -- augroup pandoc_syntax
    --   au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
    --   au! BufNewFile,BufFilePre,BufRead *.qmd set filetype=markdown.pandoc
    -- augroup END
  --   vim.api.nvim_create_autocmd({ "BufEnter" }, {
  --     pattern = { "*.md", "*.qmd" },
  --     callback = function()
  --       local otter = require('otter')
  --       otter.activate({ 'r', 'python', 'lua' }, true)
  --       vim.api.nvim_buf_set_keymap(0, 'n', 'gd', ":lua require'otter'.ask_definition()<cr>", { silent = true })
  --       vim.api.nvim_buf_set_keymap(0, 'n', 'K', ":lua require'otter'.ask_hover()<cr>", { silent = true })
  --       vim.api.nvim_buf_set_keymap(0, 'n', '<C-c>', ":lua require(notify).dismiss()<cr>", { silent = false })
  --     end,
  --   })
  --   vim.api.nvim_create_autocmd({ "BufEnter", "BufNewFile", "BufFilePre", "BufRead" }, {
  --       pattern = { "*.md", "*.qmd" },
  --       callback = function()
  --           -- vim.api.nvim_eval('let filetype=markdown.pandoc')
  --           vim.api.nvim_set_option_value('filetype', 'markdown.pandoc', {})
  --           vim.g.vim_markdown_auto_insert_bullets = 0
  --           vim.g.vim_markdown_new_list_item_indent = 0
  --       end
  --  })
  --
  --   vim.api.nvim_create_autocmd({ "BufEnter" }, {
  --       pattern = { "*.md", "*.qmd", "quarto" },
  --       callback = function()
  --           local otter = require('otter')
  --           otter.activate({ 'r', 'python', 'lua' }, true)
  --           vim.api.nvim_buf_set_keymap(0, 'n', 'gd', ":lua require'otter'.ask_definition()<cr>", { silent = true })
  --           vim.api.nvim_buf_set_keymap(0, 'n', 'K', ":lua require'otter'.ask_hover()<cr>", { silent = true })
  --           vim.api.nvim_buf_set_keymap(0, 'n', '<C-c>', ":lua require(notify).dismiss()<cr>", { silent = false })
  --       end,
  --   })
  end,
}

