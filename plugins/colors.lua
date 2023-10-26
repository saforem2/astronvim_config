return {
    {
        'levouh/tint.nvim',
        config = function()
            require('tint').setup()
        end,
    },
    { 'projekt0n/github-nvim-theme' },
    {'shaunsingh/nord.nvim'},
    {'folke/tokyonight.nvim'},
    {'EdenEast/nightfox.nvim'},
    {"catppuccin/nvim", name = "catppuccin", priority = 1000},
    {"olimorris/onedarkpro.nvim", priority = 1000}, -- color html colors
    {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require'colorizer'.setup {
                css = {css_fn = true, css = true},
                -- 'javascript',
                -- 'html',
                -- 'r',
                -- 'rmd',
                -- 'qmd',
                -- 'markdown',
                -- 'python'
            }
        end
    }
}
