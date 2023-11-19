local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- package manager
  "williamboman/mason.nvim",

  -- lsp
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  -- completion
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",

  -- snippet
  { "L3MON4D3/LuaSnip", build = "make install_jsregexp" },
  "saadparwaiz1/cmp_luasnip",

  -- linter
  "mfussenegger/nvim-lint",

  -- formatter
  "mhartington/formatter.nvim",

  -- telescope
  "nvim-lua/plenary.nvim",
  { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
  },

  -- tree
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",

  "github/copilot.vim",

  -- color theme
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
})
