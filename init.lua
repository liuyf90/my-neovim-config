require("basic")
require("plugins")
require("keybindings")

local conf_files = {
  "nvim-tree.lua", -- nvim-tree config file
  "moonfly.lua", -- moonfly.lua config file 
}
-- source all the  config files
for _, name in ipairs(conf_files) do
  local source_cmd = "source " .. " ."..[[/lua/plug-config/]]..name 
  vim.cmd(source_cmd)
end

