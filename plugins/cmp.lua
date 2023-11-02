local cmp = require('cmp')
return {
  cmp.setup({
    preselect = require('cmp').PreselectMode.None,
    mapping = cmp.mapping.preset.insert({
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      -- ['<CR>'] = cmp.mapping.confirm({ select = false }),
      -- ["<CR>"] = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Insert}),
      ['<CR>'] = function(fallback)
        if cmp.visible() then
          cmp.confirm()
        else
          fallback() -- If you use vim-endwise, this fallback will behave the same as vim-endwise.
        end
      end

    }),
  }),
}
