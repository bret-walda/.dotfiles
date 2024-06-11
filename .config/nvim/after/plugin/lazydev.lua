require("lazydev").setup({
    library = {
        "~/lua",
    },
    enabled = function(root_dir)
        return vim.g.lazydev_enabled == nil and true or vim.g.lazydev_enabled
    end,
})
