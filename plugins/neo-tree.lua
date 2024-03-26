local get_icon = require("astronvim.utils").get_icon
return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    auto_clean_after_session_restore = true,
    close_if_last_window = true,
    source_selector = {
      winbar = true,
      content_layout = "center",
      sources = {
        { source = "filesystem", display_name = get_icon "FolderClosed" .. " File" },
        { source = "buffers", display_name = get_icon "DefaultFile" .. " Bufs" },
        { source = "git_status", display_name = get_icon "Git" .. " Git" },
        { source = "diagnostics", display_name = get_icon "Diagnostic" .. " Diagnostic" },
      },
    },
    diagnostics = {
      auto_preview = { -- May also be set to `true` or `false`
        enabled = false, -- Whether to automatically enable preview mode
        preview_config = {}, -- Config table to pass to auto preview (for example `{ use_float = true }`)
        event = "neo_tree_buffer_enter", -- The event to enable auto preview upon (for example `"neo_tree_window_after_open"`)
      },
      bind_to_cwd = true,
      diag_sort_function = "severity", -- "severity" means diagnostic items are sorted by severity in addition to their positions.
                                       -- "position" means diagnostic items are sorted strictly by their positions.
                                       -- May also be a function.
      follow_current_file = { -- May also be set to `true` or `false`
        enabled = true, -- This will find and focus the file in the active buffer every time
        always_focus_file = false, -- Focus the followed file, even when focus is currently on a diagnostic item belonging to that file
        expand_followed = true, -- Ensure the node of the followed file is expanded
        leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        leave_files_open = false, -- `false` closes auto expanded files, such as with `:Neotree reveal`
      },
      group_dirs_and_files = true, -- when true, empty folders and files will be grouped together
      group_empty_dirs = true, -- when true, empty directories will be grouped together
      show_unloaded = true, -- show diagnostics from unloaded buffers
      refresh = {
        delay = 100, -- Time (in ms) to wait before updating diagnostics. Might resolve some issues with Neovim hanging.
        event = "vim_diagnostic_changed", -- Event to use for updating diagnostics (for example `"neo_tree_buffer_enter"`)
                                          -- Set to `false` or `"none"` to disable automatic refreshing
        max_items = 10000, -- The maximum number of diagnostic items to attempt processing
        -- Set to `false` for no maximum
        },
    },
    default_component_configs = {
      indent = { padding = 0, indent_size = 1 },
      icon = {
        folder_closed = get_icon "FolderClosed",
        folder_open = get_icon "FolderOpen",
        folder_empty = get_icon "FolderEmpty",
        default = get_icon "DefaultFile",
      },
      modified = { symbol = get_icon "FileModified" },
      git_status = {
        symbols = {
          added = get_icon "GitAdd",
          deleted = get_icon "GitDelete",
          modified = get_icon "GitChange",
          renamed = get_icon "GitRenamed",
          untracked = get_icon "GitUntracked",
          ignored = get_icon "GitIgnored",
          unstaged = get_icon "GitUnstaged",
          staged = get_icon "GitStaged",
          conflict = get_icon "GitConflict",
        },
      },
    },
    commands = {
      system_open = function(state) require("astronvim.utils").system_open(state.tree:get_node():get_id()) end,
      parent_or_close = function(state)
        local node = state.tree:get_node()
        if (node.type == "directory" or node:has_children()) and node:is_expanded() then
          state.commands.toggle_node(state)
        else
          require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
        end
      end,
      child_or_open = function(state)
        local node = state.tree:get_node()
        if node.type == "directory" or node:has_children() then
          if not node:is_expanded() then -- if unexpanded, expand
            state.commands.toggle_node(state)
          else -- if expanded and has children, seleect the next child
            require("neo-tree.ui.renderer").focus_node(state, node:get_child_ids()[1])
          end
        else -- if not a directory just open it
          state.commands.open(state)
        end
      end,
      copy_selector = function(state)
        local node = state.tree:get_node()
        local filepath = node:get_id()
        local filename = node.name
        local modify = vim.fn.fnamemodify

        local results = {
          e = { val = modify(filename, ":e"), msg = "Extension only" },
          f = { val = filename, msg = "Filename" },
          F = { val = modify(filename, ":r"), msg = "Filename w/o extension" },
          h = { val = modify(filepath, ":~"), msg = "Path relative to Home" },
          p = { val = modify(filepath, ":."), msg = "Path relative to CWD" },
          P = { val = filepath, msg = "Absolute path" },
        }

        local messages = {
          { "\nChoose to copy to clipboard:\n", "Normal" },
        }
        for i, result in pairs(results) do
          if result.val and result.val ~= "" then
            vim.list_extend(messages, {
              { ("%s."):format(i), "Identifier" },
              { (" %s: "):format(result.msg) },
              { result.val, "String" },
              { "\n" },
            })
          end
        end
        vim.api.nvim_echo(messages, false, {})
        local result = results[vim.fn.getcharstr()]
        if result and result.val and result.val ~= "" then
          vim.notify("Copied: " .. result.val)
          vim.fn.setreg("+", result.val)
        end
      end,
    },
    window = {
      width = 30,
      mappings = {
        ["<space>"] = false, -- disable space until we figure out which-key disabling
        ["[b"] = "prev_source",
        ["]b"] = "next_source",
        o = "open",
        O = "system_open",
        h = "parent_or_close",
        l = "child_or_open",
        Y = "copy_selector",
      },
    },
    filesystem = {
      follow_current_file = { enabled = false },
      hijack_netrw_behavior = "open_current",
      use_libuv_file_watcher = true,
    },
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function(_) vim.opt_local.signcolumn = "auto" end,
      },
    },
  }
}
