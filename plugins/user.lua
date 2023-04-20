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
  {
    'flazz/vim-colorschemes',
  },
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
  {
    'norcalli/nvim-colorizer.lua',
  },
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
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require('lsp_signature').setup({
        bind = true,
        floating_window = false,
        hint_enable = true,
        hint_prefix = " ",
        hi_parameter = "LspSignatureActiveParameter",
        -- toggle_key = '<C-s>',
        handler_opts = {
          border = "rounded"
        },
        always_trigger = true,
        extra_trigger_chars = { "(", "," },
        timer_interval = 100,
      })
    end,
  },
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
    ft = { "markdown" }
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
  { "p00f/nvim-ts-rainbow" },
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
          --   'class',
          --   'function',
          --   'method',
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
  {
    "johnfrankmorgan/whitespace.nvim",
    config = function()
      require('whitespace-nvim').setup({
        -- configuration options and their defaults `highlight` configures
        -- which highlight is used to display
        -- trailing whitespace
        highlight = 'DiffDelete',
        -- `ignored_filetypes` configures which filetypes to ignore when
        -- displaying trailing whitespace
        ignored_filetypes = { 'TelescopePrompt' },
        -- remove trailing whitespace with a keybinding
        vim.api.nvim_set_keymap(
          'n',
          '<Leader>t', "[[<cmd>lua require('whitespace-nvim').trim()<CR>]]",
          { noremap = true }
        )
      })
    end,
  },
  { 'godlygeek/tabular' },
  { 'preservim/vim-markdown', },
  { 'Iron-E/nvim-highlite' },
  { 'brenoprata10/nvim-highlight-colors' },
  {
    'rrethy/vim-hexokinase',
    run = 'make hexokinase',
    config = function()
      vim.g["Hexokinase_highlighters"] = {
        'virtual',
        'sign_column',
      }
    end,
  },
  { "nvim-telescope/telescope-file-browser.nvim" },
  {
    "folke/todo-comments.nvim",
    -- config = function()
    -- require("user.todo-comments").config()
    -- end,
  },
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
  { 'preservim/vim-pencil' },
  { 'dhruvasagar/vim-table-mode' },
  { 'tanvirtin/monokai.nvim' },
  { 'bluz71/vim-nightfly-guicolors' },
  { 'rafamadriz/neon' },
  { 'sainnhe/sonokai' },
  { 'yonlu/omni.vim' },
  { 'NTBBloodbath/doom-one.nvim' },
  { 'cpea2506/one_monokai.nvim' },
  { 'jghauser/mkdir.nvim' },
  { 'navarasu/onedark.nvim', },
  { 'hkupty/iron.nvim' },
  { 'bfredl/nvim-ipy' },
  {
    'quarto-dev/quarto-nvim',
    requires = {
      'neovim/nvim-lspconfig',
      'jmbuhr/otter.nvim'
    },
  },
  { 'Bekaboo/deadcolumn.nvim' },
  {
    "projekt0n/circles.nvim",
    requires = { "nvim-tree/nvim-web-devicons" }
  },
  {
    "rktjmp/lush.nvim"
  }
}
