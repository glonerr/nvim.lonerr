local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

-- returns the require for use in `config` parameter of packer's use
-- expects the name of the config file
local function get_config(name)
    return string.format("require(\"config/%s\")", name)
end

-- bootstrap packer if not installed
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
      'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
      install_path
  })
  print "installing packer close and reopen neovim..."
  vim.cmd [[packadd packer.nvim]]
end

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- install plugins
return require('packer').startup(function(use)
  -- packer manager
  use 'wbthomason/packer.nvim'


  -- nvim-web-devicons
  use {
    'kyazdani42/nvim-web-devicons',
    config = get_config('web-devicons')
  }

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    config = get_config('lualine'),
    event = 'VimEnter',
    lock = true,
  }

  -- bufferline
  use {
    'akinsho/bufferline.nvim',
    config = get_config('bufferline')
  }

  -- nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    lock = true,
    config = get_config('nvim-tree')
  }

  -- colorscheme
  use 'folke/tokyonight.nvim'
  use 'EdenEast/nightfox.nvim'
  use 'Mofiqul/dracula.nvim'
  use 'navarasu/onedark.nvim'

  -- floaterm
  use 'voldikss/vim-floaterm'

  -- buffer delete
  use 'famiu/bufdelete.nvim'

  use {
    "ur4ltz/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }
  -- autopairs
  use { "windwp/nvim-autopairs", config = get_config("autopairs") }

  -- nvim-treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    config = get_config('treesitter'),
    run = ':TSUpdate'
  }

  -- lsp
  use {
    'neovim/nvim-lspconfig',
    config = get_config('lsp')
  }

  -- auto complete
  -- cmp plugins
  use { "hrsh7th/nvim-cmp", config = get_config("cmp") } -- The completion plugin
  use { "hrsh7th/cmp-path", after = "nvim-cmp" } -- path completions
  use { "hrsh7th/cmp-nvim-lsp", config = get_config("cmp-nvim-lsp") }
  use { "saadparwaiz1/cmp_luasnip", after = "nvim-cmp" } -- snippet completions

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- translator
  use {
    'uga-rosa/translate.nvim',
    config = get_config('translate')
  }
end)
