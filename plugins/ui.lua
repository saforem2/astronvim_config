return {
  {
    'lukas-reineke/headlines.nvim',
    dependencies = "nvim-treesitter/nvim-treesitter",
    ft = { "markdown", "norg", "org", "qmd", "quarto", "rmd" },
    opts = {},
    config = function()
      require("headlines").setup {
        quarto = {
          query = vim.treesitter.query.parse(
            "markdown", [[
                  (atx_heading [
                      (atx_h1_marker)
                      (atx_h2_marker)
                      (atx_h3_marker)
                      (atx_h4_marker)
                      (atx_h5_marker)
                      (atx_h6_marker)
                  ] @headline)

                  (thematic_break) @dash

                  (fenced_code_block) @codeblock

                  (block_quote_marker) @quote
                  (block_quote (paragraph (inline (block_continuation) @quote)))
              ]]
            ),
            headline_highlights = { "Headline1", "Headline2", "Headline3 "},
            codeblock_highlight = "CodeBlock",
            treesitter_language = "markdown",
            -- headline_highlights = { "Headline" },
            dash_highlight = "Dash",
            dash_string = "-",
            quote_highlight = "Quote",
            quote_string = "┃",
            fat_headlines = true,
            fat_headline_upper_string = "▃",
            fat_headline_lower_string = "🬂",
          },
          markdown = {
            query = vim.treesitter.query.parse(
              "markdown",
              [[
                  (atx_heading [
                      (atx_h1_marker)
                      (atx_h2_marker)
                      (atx_h3_marker)
                      (atx_h4_marker)
                      (atx_h5_marker)
                      (atx_h6_marker)
                  ] @headline)

                  (thematic_break) @dash

                  (fenced_code_block) @codeblock

                  (block_quote_marker) @quote
                  (block_quote (paragraph (inline (block_continuation) @quote)))
              ]]
            ),
            headline_highlights = { "Headline1", "Headline2", "Headline3 "},
            codeblock_highlight = "CodeBlock",
            treesitter_language = "markdown",
            -- headline_highlights = { "Headline" },
            dash_highlight = "Dash",
            dash_string = "-",
            quote_highlight = "Quote",
            quote_string = "┃",
            fat_headlines = true,
            fat_headline_upper_string = "▃",
            fat_headline_lower_string = "🬂",
          },
        }
      end
    },
    -- { 'prurigro/vim-markdown-concealed' },
}
        -- markdown = {
        --   query = vim.treesitter.query.parse(
        --     "markdown",
        --     [[
        --         (atx_heading [
        --             (atx_h1_marker)
        --             (atx_h2_marker)
        --             (atx_h3_marker)
        --             (atx_h4_marker)
        --             (atx_h5_marker)
        --             (atx_h6_marker)
        --         ] @headline)
        --
        --         (thematic_break) @dash
        --
        --         (fenced_code_block) @codeblock
        --
        --         (block_quote_marker) @quote
        --         (block_quote (paragraph (inline (block_continuation) @quote)))
        --     ]]
        --   ),
        --   headline_highlights = { "Headline1", "Headline2", "Headline3 "},
        --   codeblock_highlight = "CodeBlock",
        --   treesitter_language = "markdown",
        --   -- headline_highlights = { "Headline" },
        --   dash_highlight = "Dash",
        --   dash_string = "-",
        --   quote_highlight = "Quote",
        --   quote_string = "┃",
        --   fat_headlines = true,
        --   fat_headline_upper_string = "▃",
        --   fat_headline_lower_string = "🬂",
        -- },
