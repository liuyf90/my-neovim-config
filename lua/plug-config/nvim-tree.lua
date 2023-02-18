--local status, nvim_tree = pcall(require, "nvim-tree")
--if not status then
--    vim.notify("nvim-tree not found")
--    return
--end
local keymap = vim.keymap
local nvim_tree = require("nvim-tree")

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

nvim_tree.setup{
    -- OR setup with some options
    sort_by = "case_sensitive",
    view = {
        width = 30,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
}
keymap.set("n", "<leader>s", function()
  return require("nvim-tree").toggle(false, true)
end, { silent = true, desc = "toggle nvim-tree" })
