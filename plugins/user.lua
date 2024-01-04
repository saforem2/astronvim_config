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
      require("hop").setup()
      vim.api.nvim_set_keymap("n", ";", ":HopChar2<CR>", { silent = true })
      vim.api.nvim_set_keymap("n", "W", ":HopWord<CR>", { silent = true })
    end,
  },
  {
    "ggandor/lightspeed.nvim", event = "BufRead",
  },
  {
    "nacro90/numb.nvim",
    event = "BufRead",
    config = function()
      require('numb').setup({
        show_numbers = true,
        show_cursorline = true,
      })
    end
  },
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup({
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-s"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      })
    end,
  },
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },
  {
    'wakatime/vim-wakatime'
  },
  {
    'mbbill/undotree'
  },
  {
    "nvim-treesitter/playground",
    cmd = "TSHighlightCapturesUnderCursor",
  },
  {
    'kosayoda/nvim-lightbulb'
  },
  {
    'machakann/vim-sandwich'
  },
  {
    'rktjmp/lush.nvim'
  },
  {
    'vim-python/python-syntax'
  },
  {
    'Vimjas/vim-python-pep8-indent'
  },
  {
    'rafcamlet/nvim-luapad',
  },
  {
    'rafi/awesome-vim-colorschemes',
  },
  -- {
  --   'flazz/vim-colorschemes',
  -- },
  {
    'tpope/vim-repeat',
  },
  {
    'kreskij/Repeatable.vim',
  },
  {
    'easymotion/vim-easymotion',
  },
  {
    'chentoast/marks.nvim',
    config = function()
      require('marks').setup({
        default_mappings = true,
        -- builtin_marks = {'.', '<', '>', '^'},
        cyclic = true,
        force_write_shada = false,
        refresh_interval = 250,
        sign_priority = { lower = 10, upper = 15, builtin = 8, bookmark = 20 },
        bookmark_0 = { sign = "⚑", virt_text = "hello world" },
      })
    end,
  },
  {
    'lervag/vimtex',
  },
  -- {
  --   'NvChad/nvim-colorizer.lua',
  --   config = require('colorizer').setup({
  --     user_default_options = {
  --       RGB      = true;         -- #RGB hex codes
  --       RRGGBB   = true;         -- #RRGGBB hex codes
  --       names    = true;         -- "Name" codes like Blue
  --       RRGGBBAA = true;        -- #RRGGBBAA hex codes
  --       rgb_fn   = true;        -- CSS rgb() and rgba() functions
  --       hsl_fn   = true;        -- CSS hsl() and hsla() functions
  --       css      = true;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
  --       css_fn   = true;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
  --       -- Available modes: foreground, background
  --       mode     = 'virtualtext'; -- Set the display mode.
  --       tailwind = true,
  --       sass = { enable = true, parsers = {"css"} },
  --       virtualtext = "■",
  --     },
  --   })
  -- },
  -- {
  --   'brenoprata10/nvim-highlight-colors',
  --   config = function()
  --     require('nvim-highlight-colors').setup({
  --       render = 'foreground',
  --       enable_named_colors = true,
  --       enable_tailwind = true,
  --     })
  --   end,
  -- },
  {
    "rmagatti/goto-preview",
    config = function()
      require('goto-preview').setup({
        width = 120,
        height = 25,
        default_mappings = false,
        debug = false,
        opacity = nil,
        post_open_hook = nil,
      })
    end,
  },
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require('lsp_signature').setup({
  --       bind = true,
  --       floating_window = false,
  --       hint_enable = true,
  --       hint_prefix = " ",
  --       hi_parameter = "LspSignatureActiveParameter",
  --       -- toggle_key = '<C-s>',
  --       handler_opts = {
  --         border = "rounded"
  --       },
  --       always_trigger = true,
  --       extra_trigger_chars = { "(", "," },
  --       timer_interval = 100,
  --     })
  --   end,
  -- },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "npxbr/glow.nvim",
    ft = { "markdown", "quarto" }
  },
  {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end
  },
  {
    'dccsillag/magma-nvim',
    run = ':UpdateRemotePlugins',
  },
  {
    "chaoren/vim-wordmotion",
  },
  {
    'jbyuki/nabla.nvim'
  },
  {
    'hoschi/yode-nvim',
    config = function()
      require('yode-nvim').setup({})
    end
  },
  {
    'iamcco/markdown-preview.nvim',
    run = function()
      vim.fn['mkdp#util#install']()
    end,
  },
  {
    'folke/zen-mode.nvim',
    config = function()
      require('zen-mode').setup({
        window = {
          backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
          -- height and width can be:
          -- * an absolute number of cells when > 1
          -- * a percentage of the width / height of the editor when <= 1
          -- * a function that returns the width or the height
          -- by default, no options are changed for the Zen window
          -- uncomment any of the options below, or add other vim.wo options you want to apply
          width = 120, -- width of the Zen window
          height = 1,  -- height of the Zen window
          options = {
            -- signcolumn = "no", -- disable signcolumn
            number = false,         -- disable number column
            relativenumber = false, -- disable relative numbers
            cursorline = false,     -- disable cursorline
            cursorcolumn = false,   -- disable cursor column
            foldcolumn = "0",       -- disable fold column
            list = false,           -- disable whitespace characters
          },
        },
        plugins = {
          options = {
            enabled = true,
            ruler = false,                  -- disables the ruler text in the cmd line area
            showcmd = false,                -- disables the command in the last line of the screen,
            twilight = { enabled = true },  -- enable to start Twilight when zen mode opens
            gitsigns = { enabled = false }, -- disables git signs
            tmux = { enabled = false },     -- disables the tmux statusline this will change the font size on kitty when in zen mode
            kitty = {
              enabled = true,
              font = "+4", -- font size increment
            },
          },
        }
      })
    end
  },
  { 'knubie/vim-kitty-navigator' },
  { "fladson/vim-kitty" },
  {
    "kdheepak/tabline.nvim",
    config = function()
      require('tabline').setup({
        -- Defaults configuration options
        enable = true,
        options = {
          -- If lualine is installed tabline will use separators configured in lualine by default.
          -- These options can be used to override those settings.
          -- section_separators = { '', '' },
          -- component_separators = { '', '' },
          max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
          show_tabs_always = false,    -- this shows tabs only when there are more than one tab or if the first tab is named
          show_devicons = true,        -- this shows devicons in buffer section
          show_bufnr = false,          -- this appends [bufnr] to buffer section,
          show_filename_only = true,   -- shows base filename only instead of relative path in filename
          -- modified_icon = "+ ", -- change the default modified icon
          modified_italic = false,     -- set to true by default; this determines whether the filename turns italic if modified
          show_tabs_only = false,      -- this shows only tabs instead of tabs + buffers
        },
      })
    end
  },
  -- { "p00f/nvim-ts-rainbow" },
  {
    "romgrk/nvim-treesitter-context",
    config = function()
      require('treesitter-context').setup({
        enable = true,   -- Enable this plugin (Can be enabled/disabled later via commands)
        throttle = true, -- Throttles plugin updates (may improve performance)
        max_lines = 0,   -- How many lines the window should span. Values <= 0 mean no limit.
        patterns = {     -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
          -- For all filetypes
          -- Note that setting an entry here replaces all other patterns for this entry.
          -- By setting the 'default' entry below, you can control which nodes you want to
          -- appear in the context window.
          -- default = {
            'class',
            'function',
            'method',
          -- },
        },
      })
    end
  },
  {
    "folke/lsp-colors.nvim",
    event = "BufRead",
  },
  { 'felipec/vim-sanegx' },
  {
    "turbio/bracey.vim",
    cmd = { "Bracey", "BraceyStop", "BraceyReload", "BraceyEval" },
    run = "npm install --prefix server",
  },
  -- {
  --   "johnfrankmorgan/whitespace.nvim",
  --   config = function()
  --     require('whitespace-nvim').setup({
  --       -- configuration options and their defaults `highlight` configures
  --       -- which highlight is used to display
  --       -- trailing whitespace
  --       highlight = 'DiffDelete',
  --       -- `ignored_filetypes` configures which filetypes to ignore when
  --       -- displaying trailing whitespace
  --       ignored_filetypes = { 'TelescopePrompt' },
  --       -- remove trailing whitespace with a keybinding
  --       vim.api.nvim_set_keymap(
  --         'n',
  --         '<Leader>t', "[[<cmd>lua require('whitespace-nvim').trim()<CR>]]",
  --         { noremap = true }
  --       )
  --     })
  --   end,
  -- },
  { 'godlygeek/tabular' },
  -- { 'preservim/vim-markdown', },
  -- { 'Iron-E/nvim-highlite' },
  { 'brenoprata10/nvim-highlight-colors' },
  -- {
  --   'rrethy/vim-hexokinase',
  --   run = 'make hexokinase',
  --   config = function()
  --     vim.g["Hexokinase_highlighters"] = {
  --       'virtual',
  --       'sign_column',
  --     }
  --   end,
  -- },
  { "nvim-telescope/telescope-file-browser.nvim" },

  -- {
  --   "folke/todo-comments.nvim",
  --   lazy = false,
  --   -- config = function()
  --   --   require('todo-comments.nvim').setup({})
  --   -- end
  --   -- config = function()
  --   -- require("user.todo-comments").config()
  --   -- end,
  -- },
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup({
        -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
      })
    end,
  },
  { 'rrethy/vim-illuminate' },
  {
    "mfussenegger/nvim-dap-python",
    config = function()
      require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
    end,
  },
  {
    'Pocco81/HighStr.nvim',
    config = function()
      local high_str = require('high-str')
      high_str.setup({
        verbosity = 1,
        saving_path = "/tmp/highstr/",
        highlight_colors = {
          color_0 = { "#0c0d0e", "smart" }, -- Cosmic charcoal
          color_1 = { "#e5c07b", "smart" }, -- Pastel yellow
          color_2 = { "#7FFFD4", "smart" }, -- Aqua menthe
          color_3 = { "#8A2BE2", "smart" }, -- Proton purple
          color_4 = { "#FF4500", "smart" }, -- Orange red
          color_5 = { "#008000", "smart" }, -- Office green
          color_6 = { "#0000FF", "smart" }, -- Just blue
          color_7 = { "#FFC0CB", "smart" }, -- Blush pink
          color_8 = { "#FFF9E3", "smart" }, -- Cosmic latte
          color_9 = { "#7d5c34", "smart" }, -- Fallow brown
        }
      })
      vim.api.nvim_set_keymap(
        "v",
        "<F3>",
        ":<c-U>HSHighlight 1<CR>",
        {
          noremap = true,
          silent = true
        }
      )
      vim.api.nvim_set_keymap(
        "v",
        "<F4>",
        ":<c-U>HSRmHighlight<CR>",
        {
          noremap = true,
          silent = true
        }
      )
    end,
  },
  -- { 'preservim/vim-pencil' },
  { 'dhruvasagar/vim-table-mode' },
  { 'tanvirtin/monokai.nvim' },
  { 'bluz71/vim-nightfly-guicolors' },
  { 'rafamadriz/neon' },
  { 'sainnhe/sonokai' },
  { 'yonlu/omni.vim' },
  { 'NTBBloodbath/doom-one.nvim' },
  -- { 'cpea2506/one_monokai.nvim' },
  { 'jghauser/mkdir.nvim' },
  { 'navarasu/onedark.nvim', },
  { 'hkupty/iron.nvim' }, -- {
  --   'hkupty/iron.nvim',
  --   config = function()
  --     require('user.plugins.iron')
  --   end
  -- },
  -- { 'bfredl/nvim-ipy' },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
    lazy = false
  },
  {
    'quarto-dev/quarto-nvim',
    requires = {
      'neovim/nvim-lspconfig',
      'jmbuhr/otter.nvim'
    },
  },
  {
    'jmbuhr/otter.nvim',
        dev = false,
        opts = {
          lsp = {
            hover = {
              require("user.style").border
            }
          }
        },
  },
  { 'Bekaboo/deadcolumn.nvim' },
  {
    "projekt0n/circles.nvim",
    requires = { "nvim-tree/nvim-web-devicons" }
  },
  {
    "rktjmp/lush.nvim"
  },
  {
    "marko-cerovac/material.nvim"
  },
  {
    "navarasu/onedark.nvim"
  },
  {
    "sainnhe/sonokai"
  },
  {
    "nyoom-engineering/oxocarbon.nvim"
  },
  -- {
  --   "cpea2506/one_monokai.nvim",
  --   config = function()
  --     require("one_monokai").setup({
  --       transparent = false,   -- enable transparent window
  --       colors = {
  --         darkbg = "#1c1c1c", -- add new color
  --         pink = "#ec6075",   -- replace default color
  --       },
  --       themes = function(colors)
  --         -- change highlight of some groups,
  --         -- the key and value will be passed respectively to "nvim_set_hl"
  --         return {
  --           Normal = { bg = colors.darkbg },
  --           ErrorMsg = { fg = colors.pink, bg = "#ec6075", standout = true },
  --           ["@lsp.type.keyword"] = { link = "@keyword" }
  --         }
  --       end,
  --     })
  --   end
  -- },
  {
    "norcalli/nvim-terminal.lua",
    config = function()
      require('terminal').setup()
    end
  },
  {
    "simrat39/rust-tools.nvim",
    config = function()
      local rt = require('rust-tools')
      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
        },
      })
    end,
  },
  {
    "lvimuser/lsp-inlayhints.nvim"
  },
  -- {
  --   "preservim/vim-markdown"
  -- },
  {
    "HiPhish/nvim-ts-rainbow2"
  },
  {
    'vim-pandoc/vim-pandoc-syntax',
  },
  {
    'norcalli/nvim-terminal.lua',
    config = function()
      require('terminal').setup()
    end
  },
  {
    'Exafunction/codeium.vim',
    config = function()
      vim.g.codeium_disable_bindings = 1
      vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
    end
  },
  {
    'anuvyklack/pretty-fold.nvim',
    config = function()
      require('pretty-fold').setup({
        sections = {
          left = {
            'content',
          },
          right = {
            ' ', 'number_of_folded_lines', ': ', 'percentage', ' ',
            function(config) return config.fill_char:rep(3) end
          }
        },
        fill_char = '•',
        remove_fold_markers = true,
        -- Keep the indentation of the content of the fold string.
        keep_indentation = true,
        -- Possible values:
        -- "delete" : Delete all comment signs from the fold string.
        -- "spaces" : Replace all comment signs with equal number of spaces.
        -- false    : Do nothing with comment signs.
        process_comment_signs = 'spaces',
        -- Comment signs additional to the value of `&commentstring` option.
        comment_signs = {},
        -- List of patterns that will be removed from content foldtext section.
        stop_words = {
          '@brief%s*', -- (for C++) Remove '@brief' and all spaces after.
        },
        add_close_pattern = true, -- true, 'last_line' or false
        matchup_patterns = {
          {  '{', '}' },
          { '%(', ')' }, -- % to escape lua pattern char
          { '%[', ']' }, -- % to escape lua pattern char
        },
        ft_ignore = { 'neorg' },
      })
    end
  },
  {
    "unblevable/quick-scope",
  },
  {
  },
  {
    'luk400/vim-jukit',
    config = function()
      -- vim.api.nvim_set_var('jukit#mappings#ext#enabled', {'py', 'ipynb'})
      vim.g.jukit_mappings_ext_enabled = {"ipynb"}
      vim.g.jukit_layout = -1
      -- vim.g['jukit#mappings#ext#enabled'] = {"py", "ipynb"}
      -- g.jukit_mappings_ext_enabled = {"py", "ipynb"}
      -- vim.opt.jukit_mappings_ext_enabled = {"py", "ipynb"}
    end,
  },
  {
    -- "code-stats/code-stats-vim",
    'https://gitlab.com/code-stats/code-stats-vim.git',
    config = function()
      -- REQUIRED: set your API key
      -- TODO: Replace with environment variable ??
      vim.g['codestats_api_key'] = {os.getenv('CODESTATS_API_KEY')}
      -- vim.g['codestats_api_key'] = {os.getenv('CODESTATS_API_KEY')}
    end
  },

  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   main="ibl",
  --   opts = {},
  --   config = function()
  --     local highlight = {
  --       "CursorColumn",
  --       "Whitespace",
  --     }
  --     require("ibl").setup({
  --       indent = { highlight = highlight, char="" },
  --       whitespace = {
  --         highlight = highlight,
  --         remove_blankline_trail = false,
  --       },
  --       scope = { enabled = false },
  --     })
  --   end,
  -- },

  -- {
  --   'echasnovski/mini.nvim',
  --   version = false,
  --   config = function()
  --     require("mini.init").setup()
  --     require("mini.animate").setup()
  --     require("mini.basics").setup()
  --     require("mini.hipatterns").setup()
  --     require('mini.misc').setup()
  --   end
  -- },

  {
    'lukas-reineke/headlines.nvim',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      config = true,
    },
    config = function()
      -- vim.cmd [[ highlight Headline1 guibg=#2C6E00 guifg=#58DB01 gui=italic ]]
      -- vim.cmd [[ highlight Headline2 guibg=#C8DB01 guifg=#2C6E00 gui=italic ]]
      -- -- vim.cmd [[highlight CodeBlock guibg=#07230E guifg=lightyellow]]
      -- -- --
      -- vim.cmd [[highlight Quote guifg=#0099EC]]
      -- --
      -- vim.cmd [[highlight Dash guibg=#58DB01]]
      -- vim.cmd [[highlight Dash guifg=#58DB01 gui=bold]]
    end,
  },

  {
    'ThePrimeagen/vim-be-good'
  },

  {
    "AckslD/nvim-FeMaco.lua",
    config = function()
      require('femaco').setup()
    end,
  },

  -- {
  --   "edluffy/hologram.nvim",
  --   lazy = false,
  --   -- opts = {},
  --   -- confi
  --   -- = true,
  --   config = function()
  --     require('hologram').setup({
  --       auto_display = true,
  --     })
  --   end,
  --   rocks = { "magick" },
  -- },

  {
    '3rd/image.nvim',
    -- lazy = false,
    event = "VeryLazy",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
        require("nvim-treesitter.configs").setup({
          ensure_installed = {'markdown'},
          highlight = { enable = true },
        })
      end,
    },
    opts = {
      backend = 'kitty',
      integrations = {
        markdown = {
          enabled = true,
          clear_in_insert_mode = true,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = {
            "markdown",
            "quarto",
            "vimwiki"
          },
        },
        neorg = {
          enabled = true,
          clear_in_insert_mode = false,
          download_remote_images = true,
          only_render_image_at_cursor = false,
          filetypes = {
            "norg"
          },
        },
      },
      max_width = nil,
      max_height = nil,
      max_width_window_percentage = nil,
      max_height_window_percentage = 50,
      window_overlap_clear_ft_ignore = {
        "cmp_menu",
        "cmp_docs",
        "notifications",
        "",
      },
      editor_only_render_when_focused = false,
      tmux_show_only_in_active_window = false,
      hijack_file_patterns = {
        "*.png",
        "*.jpg",
        "*.jpeg",
        "*.gif",
        "*.webg",
      }
    },
    rocks = { "magick" },
  },

  {
    'nfrid/markdown-togglecheck',
    dependencies = { 'nfrid/treesitter-utils' },
    ft = { 'markdown', 'quarto', },
  },

  {
    "yaocccc/nvim-hl-mdcodeblock.lua",
    dependencies = { "nvim-treesitter" },
    config = function()
      require('hl-mdcodeblock').setup({
        hl_group = "MDCodeBlock",   -- default highlight group
        events = {                  -- refresh event
            "FileChangedShellPost",
            "Syntax",
            "TextChanged",
            "TextChangedI",
            "InsertLeave",
            "WinScrolled",
            "BufEnter",
        },
        padding_right = 4,          -- always append 4 space at lineend
        timer_delay = 20,           -- refresh delay(ms)
        query_by_ft = {             -- special parser query by filetype
            markdown = {            -- filetype
                'markdown',         -- parser
                '(fenced_code_block) @codeblock', -- query
            },
            rmd = {                 -- filetype
                'markdown',         -- parser
                '(fenced_code_block) @codeblock', -- query
            },
        },
        -- minumum_len = ,          -- minimum len to highlight (number | function)
        -- minumum_len = function () return math.max(math.floor(vim.api.nvim_win_get_width(0) * 0.8), 100) end
      })
    end,
  },

  {
    'kiran94/edit-markdown-table.nvim',
    config = true,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    cmd = "EditMarkdownTable",
  },

  {
    "tadmccorkle/markdown.nvim",
    -- event = "VeryLazy",
    -- filetypes = { "markdown", "quarto", ""}
    lazy = false,
    opts = {
      -- disable all keymaps by setting mappings field to 'false'
      -- selectively disable keymaps by setting corresponding field to 'false'
      mappings = {
        inline_surround_toggle = "gs", -- (string|boolean) toggle inline style
        inline_surround_toggle_line = "gss", -- (string|boolean) line-wise toggle inline style
        inline_surround_delete = "ds", -- (string|boolean) delete emphasis surrounding cursor
        inline_surround_change = "cs", -- (string|boolean) change emphasis surrounding cursor
        link_add = "gl", -- (string|boolean) add link
        link_follow = "gx", -- (string|boolean) follow link
        go_curr_heading = "]c", -- (string|boolean) set cursor to current section heading
        go_parent_heading = "]p", -- (string|boolean) set cursor to parent section heading
        go_next_heading = "]]", -- (string|boolean) set cursor to next section heading
        go_prev_heading = "[[", -- (string|boolean) set cursor to previous section heading
      },
      inline_surround = {
        -- for the emphasis, strong, strikethrough, and code fields:
        -- * key: used to specify an inline style in toggle, delete, and change operations
        -- * txt: text inserted when toggling or changing to the corresponding inline style
        emphasis = {
          key = "i",
          txt = "*",
        },
        strong = {
          key = "b",
          txt = "**",
        },
        strikethrough = {
          key = "s",
          txt = "~~",
        },
        code = {
          key = "c",
          txt = "`",
        },
      },
      link = {
        paste = {
          enable = true, -- whether to convert URLs to links on paste
        },
      },
      toc = {
        -- comment text to flag headings/sections for omission in table of contents
        omit_heading = "toc omit heading",
        omit_section = "toc omit section",
        -- cycling list markers to use in table of contents
        -- use '.' and ')' for ordered lists
        markers = { "-" },
      },
      -- hook functions allow for overriding or extending default behavior
      -- fallback function with default behavior is provided as argument
      hooks = {
        -- called when following links with `dest` as the link destination
        follow_link = nil, -- fun(dest: string, fallback: fun())
      },
      on_attach = nil, -- (fun(bufnr: integer)) callback when plugin attaches to a buffer
    },
  },

  {
    'mvllow/modes.nvim',
    lazy = false,
    config = function()
      require('modes').setup({
        colors = {
          copy = "#AE81FF",
          delete = "#FF7575",
          insert = "#222222",
          visual = "#FFEE58",
        },
        -- Set opacity for cursorline and number background
        line_opacity = 0.15,
        -- Enable cursor highlights
        set_cursor = true,
        -- Enable cursorline initially, and disable cursorline for inactive windows
        -- or ignored filetypes
        set_cursorline = true,
        -- Enable line number highlights to match cursorline
        set_number = true,
        -- Disable modes highlights in specified filetypes
        -- Please PR commonly ignored filetypes
        ignore_filetypes = { 'NvimTree', 'TelescopePrompt' }
      })
    end,
  },

  {
    "uga-rosa/ccc.nvim",
    config = function()
      local ColorInput = require("ccc.input")
      local convert = require("ccc.utils.convert")

      local RgbHslCmykInput = setmetatable({
          name = "RGB/HSL/CMYK",
          max = { 1, 1, 1, 360, 1, 1, 1, 1, 1, 1 },
          min = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
          delta = { 1 / 255, 1 / 255, 1 / 255, 1, 0.01, 0.01, 0.005, 0.005, 0.005, 0.005 },
          bar_name = { "R", "G", "B", "H", "S", "L", "C", "M", "Y", "K" },
      }, { __index = ColorInput })

      function RgbHslCmykInput.format(n, i)
          if i <= 3 then
              -- RGB
              n = n * 255
          elseif i == 5 or i == 6 then
              -- S or L of HSL
              n = n * 100
          elseif i >= 7 then
              -- CMYK
              return ("%5.1f%%"):format(math.floor(n * 200) / 2)
          end
          return ("%6d"):format(n)
      end

      function RgbHslCmykInput.from_rgb(RGB)
          local HSL = convert.rgb2hsl(RGB)
          local CMYK = convert.rgb2cmyk(RGB)
          local R, G, B = unpack(RGB)
          local H, S, L = unpack(HSL)
          local C, M, Y, K = unpack(CMYK)
          return { R, G, B, H, S, L, C, M, Y, K }
      end

      function RgbHslCmykInput.to_rgb(value)
          return { value[1], value[2], value[3] }
      end

      function RgbHslCmykInput:_set_rgb(RGB)
          self.value[1] = RGB[1]
          self.value[2] = RGB[2]
          self.value[3] = RGB[3]
      end

      function RgbHslCmykInput:_set_hsl(HSL)
          self.value[4] = HSL[1]
          self.value[5] = HSL[2]
          self.value[6] = HSL[3]
      end

      function RgbHslCmykInput:_set_cmyk(CMYK)
          self.value[7] = CMYK[1]
          self.value[8] = CMYK[2]
          self.value[9] = CMYK[3]
          self.value[10] = CMYK[4]
      end

      function RgbHslCmykInput:callback(index, new_value)
          self.value[index] = new_value
          local v = self.value
          if index <= 3 then
              local RGB = { v[1], v[2], v[3] }
              local HSL = convert.rgb2hsl(RGB)
              local CMYK = convert.rgb2cmyk(RGB)
              self:_set_hsl(HSL)
              self:_set_cmyk(CMYK)
          elseif index <= 6 then
              local HSL = { v[4], v[5], v[6] }
              local RGB = convert.hsl2rgb(HSL)
              local CMYK = convert.rgb2cmyk(RGB)
              self:_set_rgb(RGB)
              self:_set_cmyk(CMYK)
          else
              local CMYK = { v[7], v[8], v[9], v[10] }
              local RGB = convert.cmyk2rgb(CMYK)
              local HSL = convert.rgb2hsl(RGB)
              self:_set_rgb(RGB)
              self:_set_hsl(HSL)
          end
      end

      local ccc = require("ccc")
      ccc.setup({
          inputs = {
              RgbHslCmykInput,
          },
          highlighter = {
              auto_enable = true,
              lsp = true,
          },
      })
    end
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    config = function()
      require("flash").setup({
        opts = {},
        -- stylua: ignore
        -- keys = {
        --   { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
        --   { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
        --   { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
        --   { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
        --   { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        -- },
      })
    end
  },

  {
      "ixru/nvim-markdown",
      lazy = false,
      filetypes = { "markdown" },
      config = function()
          vim.cmd('let g:vim_markdown_math = 1')
          vim.cmd('let g:vim_markdown_frontmatter = 1')
      end,
  },

  {
    "stevearc/dressing.nvim",
    opts = {},
    config = function()
      require("dressing").setup({
        input = {
          -- Set to false to disable the vim.ui.input implementation
          enabled = true,
          -- Default prompt string
          default_prompt = "Input:",
          -- Can be 'left', 'right', or 'center'
          title_pos = "left",
          -- When true, <Esc> will close the modal
          insert_only = true,
          -- When true, input will start in insert mode.
          start_in_insert = true,
          -- These are passed to nvim_open_win
          border = "rounded",
          -- 'editor' and 'win' will default to being centered
          relative = "cursor",
          -- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
          prefer_width = 40,
          width = nil,
          -- min_width and max_width can be a list of mixed types.
          -- min_width = {20, 0.2} means "the greater of 20 columns or 20% of total"
          max_width = { 140, 0.9 },
          min_width = { 20, 0.2 },
          buf_options = {},
          win_options = {
            -- Disable line wrapping
            wrap = false,
            -- Indicator for when text exceeds window
            list = true,
            listchars = "precedes:…,extends:…",
            -- Increase this for more context when text scrolls off the window
            sidescrolloff = 0,
          },
          -- Set to `false` to disable
          mappings = {
            n = {
              ["<Esc>"] = "Close",
              ["<CR>"] = "Confirm",
            },
            i = {
              ["<C-c>"] = "Close",
              ["<CR>"] = "Confirm",
              ["<Up>"] = "HistoryPrev",
              ["<Down>"] = "HistoryNext",
            },
          },
          override = function(conf)
            -- This is the config that will be passed to nvim_open_win.
            -- Change values here to customize the layout
            return conf
          end,

          -- see :help dressing_get_config
          get_config = nil,
        },
        select = {
          -- Set to false to disable the vim.ui.select implementation
          enabled = true,

          -- Priority list of preferred vim.select implementations
          backend = { "telescope", "fzf_lua", "fzf", "builtin", "nui" },

          -- Trim trailing `:` from prompt
          trim_prompt = true,

          -- Options for telescope selector
          -- These are passed into the telescope picker directly. Can be used like:
          -- telescope = require('telescope.themes').get_ivy({...})
          telescope = nil,

          -- Options for fzf selector
          fzf = {
            window = {
              width = 0.5,
              height = 0.4,
            },
          },

          -- Options for fzf-lua
          fzf_lua = {
            -- winopts = {
            --   height = 0.5,
            --   width = 0.5,
            -- },
          },

          -- Options for nui Menu
          nui = {
            position = "50%",
            size = nil,
            relative = "editor",
            border = {
              style = "rounded",
            },
            buf_options = {
              swapfile = false,
              filetype = "DressingSelect",
            },
            win_options = {
              winblend = 0,
            },
            max_width = 80,
            max_height = 40,
            min_width = 40,
            min_height = 10,
          },

          -- Options for built-in selector
          builtin = {
            -- Display numbers for options and set up keymaps
            show_numbers = true,
            -- These are passed to nvim_open_win
            border = "rounded",
            -- 'editor' and 'win' will default to being centered
            relative = "editor",

            buf_options = {},
            win_options = {
              cursorline = true,
              cursorlineopt = "both",
            },

            -- These can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
            -- the min_ and max_ options can be a list of mixed types.
            -- max_width = {140, 0.8} means "the lesser of 140 columns or 80% of total"
            width = nil,
            max_width = { 140, 0.8 },
            min_width = { 40, 0.2 },
            height = nil,
            max_height = 0.9,
            min_height = { 10, 0.2 },

            -- Set to `false` to disable
            mappings = {
              ["<Esc>"] = "Close",
              ["<C-c>"] = "Close",
              ["<CR>"] = "Confirm",
            },

            override = function(conf)
              -- This is the config that will be passed to nvim_open_win.
              -- Change values here to customize the layout
              return conf
            end,
          },

          -- Used to override format_item. See :help dressing-format
          format_item_override = {},

          -- see :help dressing_get_config
          get_config = nil,
        },
      })
    end,
  }

}


  -- {
  --   'KeitaNakamura/tex-conceal.vim',
  --   ft = { "tex" },
  --   opts = {},
  -- },
  -- { "tomtom/tcomment_vim" },
  -- {
  --   "Cassin01/wf.nvim",
  --   config = function()
  --   require('wf').setup()
  --   end
  -- }
