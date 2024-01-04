return {
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
      'projekt0n/github-nvim-theme',
      lazy = false,
      config = function()
          local palettes = {
              all = {
                  red = '#FF5252',
              },
              github_dark = {
                  bg1 = "#1c1c1c",
              }
          }
          local specs = {
              -- all = {
              --     syntax = {
              --
              --     }
              -- }
              -- github_dark = {
              --     syntax = {
              --         background = "#"
              --     }
              -- }
          }
          require('github-theme').setup({
              palettes = palettes,
          })
          vim.cmd('colorscheme github_dark')
      end
  },
}
