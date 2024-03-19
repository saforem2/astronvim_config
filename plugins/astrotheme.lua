return {
  {
    "AstroNvim/astrotheme",
    config = function()
      require("astrotheme").setup({
        palette = "astrodark", -- String of the default palette to use when calling `:colorscheme astrotheme`
        background = { -- :h background, palettes to use when using the core vim background colors
          light = "astrolight",
          dark = "astrodark",
        },

        style = {
          transparent = false,         -- Bool value, toggles transparency.
          inactive = true,             -- Bool value, toggles inactive window color.
          float = true,                -- Bool value, toggles floating windows background colors.
          neotree = true,              -- Bool value, toggles neo-trees background color.
          border = false,               -- Bool value, toggles borders.
          title_invert = true,         -- Bool value, swaps text and background colors.
          italic_comments = true,      -- Bool value, toggles italic comments.
          simple_syntax_colors = false, -- Bool value, simplifies the amounts of colors used for syntax highlighting.
        },

        termguicolors = true, -- Bool value, toggles if termguicolors are set by AstroTheme.
        terminal_color = true, -- Bool value, toggles if terminal_colors are set by AstroTheme.
        plugin_default = "auto", -- Sets how all plugins will be loaded
                                 -- "auto": Uses lazy / packer enabled plugins to load highlights.
                                 -- true: Enables all plugins highlights.
                                 -- false: Disables all plugins.

        plugins = {              -- Allows for individual plugin overrides using plugin name and value from above.
          ["bufferline.nvim"] = true,
        },

        palettes = {
          global = {             -- Globally accessible palettes, theme palettes take priority.
            my_grey = "#ebebeb",
            my_color = "#ffffff"
          },
          astrodark = {          -- Extend or modify astrodarks palette colors
            ui = {
              inactive_base = "#222222",
              base = "#1c1c1c",
              border = "#282828",
              current_line = "#333333",
              red = "#FF5252", -- Overrides astrodarks red UI color
              orange = "#FD971F",
              yellow = "#FFFF00",
              green = "#69DB7C",
              blue = "#1A8FFF",
              purple = "#AE81FF",
              accent = "#00CCFF"  -- Changes the accent color of astrodark.
            },
            syntax = {
              red = "#FF66FF", -- #FF67FF",
              orange = "#FFA94D",
              yellow = "#FFFF00",
              green = "#44CF6E",
              mute = "#666666",
              blue = "#1A8FFF",
              cyan = "#27C6DA", -- Overrides astrodarks cyan syntax color
              comments = "#444444"  -- Overrides astrodarks comment color.
            },
            my_color = "#000000", -- Overrides global.my_color
            neon_green = "#D3FF3A",
          },
        },

        highlights = {
          global = {             -- Add or modify hl groups globally, theme specific hl groups take priority.
            modify_hl_groups = function(hl, c)
              hl.PluginColor4 = {fg = c.my_grey, bg = c.none }
            end,
          },
          astrodark = {
            -- first parameter is the highlight table and the second parameter is the color palette table
            modify_hl_groups = function(hl, c) -- modify_hl_groups function allows you to modify hl groups,
              -- hl.Comment.fg = c.my_color
              hl.Comment.italic = true
            end,
            ["@String"] = {fg = "#D3FF3A", bg = "NONE"},
          },
        },
      })
    end,
  }
}
