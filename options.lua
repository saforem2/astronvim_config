-- return function(local_vim)
--   local_vim.opt.termguicolors = true
--   -- local_vim.opt.conceallevel = 1
--   local_vim.opt.list = true
--   local_vim.opt.listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" }
--   local_vim.opt.showbreak =  "↪ "
--   local_vim.opt.showtabline = (local_vim.t.bufs and #local_vim.t.bufs > 1) and 2 or 1
--   local_vim.opt.swapfile = false
--   local_vim.opt.wrap = false
--   local_vim.opt.backupdir = function(v) return {v.fn.expand('~') .. '/.backup//' } end
--   local_vim.opt.undodir = function(v) return { v_vim.fn.expand('~') .. "/.undo//" } end
--   local_vim.opt.backupext = ".bak"
--   local_vim.opt.completeopt = { "menuone,noselect,preview" }
-- end
-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    -- relativenumber = true, -- sets vim.opt.relativenumber
    -- number = true,         -- sets vim.opt.number
    -- spell = false,         -- sets vim.opt.spell
    -- signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
    -- wrap = false,          -- sets vim.opt.wrap
    -- background = "dark",
    -- swapfile = false,
    -- vim.opt.runtimepath:append(',~/.local/share/nvim/runtime')
    -- undodir = function(local_vim) return { local_vim.fn.expand('~') .. "/.undo//" } end,
    -- runtimepath = function(local_vim) return { local_vim.fn.expand('~/') .. '~/.local/share/nvim/runtime/
    -- runtimepath = function(local_vim) return { local_vim.fn.expand('~/') .. ".local/share/nvim/runtime/colors" } end,
    -- spellfile = vim.fn.expand "~/.config/nvim/lua/user/spell/en.utf-8.add",
    -- thesaurus = vim.fn.expand "~/.config/nvim/lua/user/spell/mthesaur.txt",
    -- backup = true,
    undofile = true,
    -- writebackup = true,
    undolevels = 10000,
    termguicolors = true,
    -- backupdir = function(local_vim) return { local_vim.fn.expand('~') .. "/.backup//" } end,
    -- undodir = function(local_vim) return { local_vim.fn.expand('~') .. "/.undo//" } end,
    -- backupdir = { function(local_vim) return { local_vim.fn.expand('$HOME/.backup/') } end },
    -- undodir = { function(local_vim) return { local_vim.fn.expand("$HOME/.undo") } end },
    -- backupext = ".bak",
    -- backupcopy = "yes",

    -- conceallevel = 3, -- enable conceallevel
    spell = false,         -- sets vim.opt.spell
    list = true,  -- show whitespace characters
    listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
    showbreak = "↪ ",
    -- showtabline = function(local_vim) return { (local_vim.t.bufs and #local_vim.t.bufs > 1) and 2 or 1 } end,
    swapfile = false,
    wrap = false, -- soft wrap lines
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,         -- sets vim.opt.number
    confirm = true,
    scrolloff = 4,
    -- shiftround = true,
    sidescrolloff = 8,
    foldmethod = "expr",
    foldlevel = 10000,
    foldexpr = "v:lua.vim.treesitter.foldexpr()",
    formatexpr = "v:lua.require'lazyvim.util'.format.formatexpr()",
    signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
    completeopt = "menuone,noselect,preview",
    showtabline = (vim.t.bufs and #vim.t.bufs > 1) and 2 or 1
  },
  g = {
    mapleader = " ",                 -- sets vim.g.mapleader
    autoformat_enabled = false,      -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
    cmp_enabled = true,              -- enable completion at start
    autopairs_enabled = true,        -- enable autopairs at start
    diagnostics_mode = 2,            -- set the visibility of diagnostics in the UI (0=off, 1=only show in status line, 2=virtual text off, 3=all on)
    icons_enabled = true,            -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
    slime_target = "kitty",
    ui_notifications_enabled = true, -- disable notifications when toggling UI elements
    tex_conceal = 'gm',
    jukit_mappings_ext_enabled = {"py", "ipynb"},
    jukit_layout = -1,
    qs_highlight_on_keys = {"f", "F", "t", "T"},
    pandoc_syntax_conceal_blacklist = { 'codeblock_delim', 'codeblock_start' },
    -- tex_conceal = 'm',
    -- pandoc_syntax_conceal_blacklist = { 'codeblock_delim', 'codeblock_start' },


    -- vim.g.qs_highlight_on_keys = {"f", "F", "t", "T"}
    -- vim.g.jukit_mappings_ext_enabled = {"py", "ipynb"}
    -- vim.g.jukit_layout = -1
    -- vim.g['pandoc#syntax#conceal#use'] = false
    -- disable conceal in markdown/quarto
    -- vim.g['pandoc#syntax#conceal#use'] = false
    --
    -- -- embeds are already handled by treesitter injectons
    -- vim.g['pandoc#syntax#codeblocks#embeds#use'] = false
    -- vim.g['pandoc#syntax#conceal#blacklist'] = { 'codeblock_delim', 'codeblock_start' }
    --
    -- -- but allow some types of conceal in math regions:
    -- -- see `:h g:tex_conceal`
    -- vim.g['tex_conceal'] = 'gm'
    -- --   end
    -- },

    -- python3_host_prog="/lus/grand/projects/datascience/foremans/locations/thetaGPU/projects/argonne-lcf/cnn-esm/venvs/thetaGPU/2023-04-26/bin/python3",
    -- python3_host_prog = vim.substitute(vim.shell("which -a python3 | head -n2 | tail -n1"), "\n", '', 'g'),
  },

  -- cmd = {
  --   colorscheme = "oxocarbon",
  -- }
}

-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
