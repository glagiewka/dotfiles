local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

    -- files
    "nvim-lua/plenary.nvim",
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.6",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    'mbbill/undotree',

    -- ui 
    {
        "rose-pine/neovim",
        name = "rose-pine"
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    -- language support
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },

    -- snippets
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },

    -- debugger
    'puremourning/vimspector',
})
