require('toggleterm').setup{
    size = 20,
    open_mapping = [[<c-\>]],
    direction = 'float',
    autochdir = true,
    shade_terminals = true,

    keys = {
        {vim.keymap.set("n", "<leader>th",":ToggleTerm size=20 direction=horizontal dir=vim.fn.getcwd()<CR>")},
        {vim.keymap.set("n", "<leader>tv",":ToggleTerm size=100 direction=vertical dir=vim.fn.getcwd()<CR>")},


    },

}
