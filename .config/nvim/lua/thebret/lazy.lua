local plugins = {
    { 'folke/lazy.nvim' },
    { 'nvim-lualine/lualine.nvim'},
    {'nvim-tree/nvim-web-devicons'},

{ "ggandor/leap.nvim",
    dependencies ={
        { "tpope/vim-repeat" },
    },

},

      {
          'nvim-telescope/telescope.nvim', tag = '0.1.8',
          -- or                            , branch = '0.1.x',
          dependencies = {
              {'nvim-lua/plenary.nvim'},
              {'nvim-lua/popup.nvim'},
          },
      },

  {
      'folke/tokyonight.nvim', --Theme for Neovim
  },

  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',
  dependencies = { { 'nvim-treesitter/playground' },
                   { 'mbbill/undotree' },
                   { 'nvim-treesitter/nvim-treesitter-textobjects'},


  },

  },

  { "folke/lazydev.nvim",
  ft = "lua", -- only load on lua files 

},
  {"rcarriga/nvim-dap-ui",
  dependencies = {
      {"mfussenegger/nvim-dap"},
      {"nvim-telescope/telescope-dap.nvim"},
      {'theHamsta/nvim-dap-virtual-text'},
      {"nvim-neotest/nvim-nio"},
  },

  },

  {"kylechui/nvim-surround",
    version = "*"
  },
  {
      'akinsho/toggleterm.nvim',
      version = "*",
  },
{
  'saghen/blink.cmp',
  version = '*',
dependencies = {
    -- LSP Support
    --
    {'neovim/nvim-lspconfig'},
    {'rafamadriz/friendly-snippets'},
    {'L3MON4D3/LuaSnip'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

},
},
{
    'windwp/nvim-autopairs'
},
{
    'nvim-tree/nvim-tree.lua'
},
{
    'nvim-telescope/telescope-ui-select.nvim'
},
{
    "folke/trouble.nvim"
},
{
    "folke/zen-mode.nvim"
},
{
    "folke/twilight.nvim"
},
{
    "goolord/alpha-nvim"
},
{
    "lukas-reineke/indent-blankline.nvim", main = "ibl",
},
{
    "lewis6991/gitsigns.nvim"
},
{
    "folke/todo-comments.nvim"
},
{
    "folke/noice.nvim",
    dependencies = {
        {"MunifTanjim/nui.nvim"},
        {"rcarriga/nvim-notify"},
    },
},
{
    "folke/which-key.nvim"
},
{
    "kevinhwang91/nvim-ufo",
    dependencies = {
        {"kevinhwang91/promise-async"},
    },
},
{
    "mfussenegger/nvim-lint",
},
{
    "stevearc/conform.nvim",
},
{
    "lervag/vimtex",
},
{
    "NeogitOrg/neogit",
    dependencies = {
        { "sindrets/diffview.nvim" },
    },
},
{
    "numToStr/Comment.nvim",
},
{
    "stevearc/oil.nvim",
},
{
    "zk-org/zk-nvim",
},
{
    "m4xshen/hardtime.nvim",
},
{
    "cbochs/grapple.nvim",
},
{
    "nyoom-engineering/oxocarbon.nvim",
},
{
    "nvimtools/hydra.nvim",
},
}
require("lazy").setup(plugins, { defaults = {lazy = false,},})
