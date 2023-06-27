return function()
  vim.diagnostic.config({ virtual_text = false })
  -- vim.opt.runtimepath:append("~/.local/share/nvim/runtime")
  vim.opt.runtimepath:prepend("~/.local/share/nvim/runtime/colors,")
  -- vim.cmd('set rtp+=~/.local/share/nvim/runtime/colors')
  local signs = {
    Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " "
  }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
  end
  -- local function yaml_ft(path, bufnr)
  --   -- get content of buffer as string
  --   local content = vim.filetype.getlines(bufnr)
  --   if type(content) == "table" then content = table.concat(content, "\n") end
  --
  --   -- check if file is in roles, tasks, or handlers folder
  --   local path_regex = vim.regex "(tasks\\|roles\\|handlers)/"
  --   if path_regex and path_regex:match_str(path) then return "yaml.ansible" end
  --   -- check for known ansible playbook text and if found, return yaml.ansible
  --   local regex = vim.regex "hosts:\\|tasks:"
  --   if regex and regex:match_str(content) then return "yaml.ansible" end
  --
  --   -- return yaml if nothing else
  --   return "yaml"
  -- end
  --
  -- vim.filetype.add {
  --   extension = {
  --     qmd = "markdown",
  --     yml = yaml_ft,
  --     yaml = yaml_ft,
  --   },
  --   pattern = {
  --     ["/tmp/neomutt.*"] = "markdown",
  --   },
  -- }
  --
  -- require "user.autocmds"

end
