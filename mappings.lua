-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
-- vim.api.nvim_set_keymap('n', '0', '^', { silent = true })
-- vim.api.nvim_set_keymap('n', '<C-J>', 'J', { silent = true })
-- vim.api.nvim_set_keymap('n', 'X', [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]], { silent = true })
-- vim.api.nvim_set_keymap('n', '<C-S>', [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]], { silent = true })
-- vim.api.nvim_set_keymap('n', '<C-k>', [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]], { silent = true })
return {
    -- first key is the mode
    c = {
        ["<S-Enter>"] = {
            function()
                require("noice").redirect(vim.fn.getcmdline())
            end,
            desc = "Redirect Commandline",
        },
    },
    n = {
        -- second key is the lefthand side of the map
        -- mappings seen under group name "Buffer"
        ["\\"] = {
            "<cmd>lua require('notify').dismiss()<CR>",
            desc = "Dismiss Notification"
        },
        ["<leader>\\"] = {"<cmd>QuartoPreview<cr>", desc = "Quarto Preview"},
        ["<leader>d"] = {[["_d]], desc = "Beginning of line"},
        ["0"] = {"^", desc = "Beginning of line"},
        -- ["<C-J>"] = {"J", desc = "Join line"},
        ["X"] = {
            [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]],
            desc = "Split line"
        },
        ["<leader>bn"] = {"<cmd>tabnew<cr>", desc = "New tab"},
        ["<leader>bD"] = {
            function()
                require("astronvim.utils.status").heirline.buffer_picker(
                    function(bufnr)
                        require("astronvim.utils.buffer").close(bufnr)
                    end)
            end,
            desc = "Pick to close"
        },
        -- tables with the `name` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<leader>b"] = {name = "Buffers"},
        ["<leader>tr"] = {"<cmd>IronRepl<cr>", desc = "Iron REPL"},
        ["<leader>t<space>"] = {"<cmd>IronFocus<cr>", desc = "Iron Focus"},
        ["<leader>tH"] = {"<cmd>IronHide<cr>", desc = "Iron Hide"},
        -- quick save
        ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        ['<CR>'] = function(fallback)
            -- Don't block <CR> if signature help is active
            -- https://github.com/hrsh7th/cmp-nvim-lsp-signature-help/issues/13
            local cmp = require('cmp')
            if not cmp.visible() or not cmp.get_selected_entry() or cmp.get_selected_entry().source.name == 'nvim_lsp_signature_help' then
                fallback()
            else
                cmp.confirm({
                    -- Replace word if completing in the middle of a word
                    -- https://github.com/hrsh7th/nvim-cmp/issues/664
                    behavior = cmp.ConfirmBehavior.Replace,
                    -- Don't select first item on CR if nothing was selected
                    select = false,
                })
            end
        end
    },
    t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
    }
}
