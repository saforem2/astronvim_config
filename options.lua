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
    conceallevel = 1, -- enable conceallevel
    list = true,  -- show whitespace characters
    listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
    showbreak = "↪ ",
    showtabline = (vim.t.bufs and #vim.t.bufs > 1) and 2 or 1,
    -- spellfile = vim.fn.expand "~/.config/nvim/lua/user/spell/en.utf-8.add",
    swapfile = false,
    -- thesaurus = vim.fn.expand "~/.config/nvim/lua/user/spell/mthesaur.txt",
    wrap = true, -- soft wrap lines
    relativenumber = true, -- sets vim.opt.relativenumber
    number = true,         -- sets vim.opt.number
    spell = false,         -- sets vim.opt.spell
    signcolumn = "auto",   -- sets vim.opt.signcolumn to auto
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
