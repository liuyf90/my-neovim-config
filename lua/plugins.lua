-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- lsp支持
  use({ "neovim/nvim-lspconfig", "williamboman/nvim-lsp-installer" })
  
  -- 模糊匹配工具
  use("junegunn/fzf")
  use("junegunn/fzf.vim")
  -- 方便操作
  use("tpope/vim-commentary")
  use("tpope/vim-fugitive")
  use("tpope/vim-repeat")
  use("tpope/vim-surround")
  use("tpope/vim-unimpaired")
  -- Github copilot
  use({ "github/copilot.vim" })
  -- 格式化代码
  use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
  use({ "rlue/vim-barbaric" })
  -- 快速跳转
  use({
      "phaazon/hop.nvim",
      branch = "v1",
      config = function()
          require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
      end,
  })
  -- 函数列表
  use("liuchengxu/vista.vim")
  -- 代码补全
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/nvim-cmp")
  -- vsnip
  use("hrsh7th/cmp-vsnip")
  -- lsp美化
  use("onsails/lspkind-nvim")
  --nvim美化
  ----moonfly is a dark charcoal theme for classic Vim & modern Neovim.
  use({
      "bluz71/vim-moonfly-colors", 
      as= "moonfly", 
      config = function() 
          require("plug-config.moonfly") 
      end,
  })
  --nvim-tree
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      config = [[require('plug-config.nvim-tree')]],
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
end)
