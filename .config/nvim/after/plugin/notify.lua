require("notify").setup({
    stages = "slide",
    render = "compact",
    timeout = 6000,

})
vim.notify = require("notify")

local opts = {noremap = true, silent = true}

vim.api.nvim_set_keymap("n", "<leader>nt", ":Telescope notify<CR>", opts)


