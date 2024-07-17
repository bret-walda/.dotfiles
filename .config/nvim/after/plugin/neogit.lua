local neogit = require('neogit')
neogit.setup {}


local wk = require("which-key")
wk.add({
    { "<leader>gs", "<cmd>Neogit<cr>", desc = "Start Neogit", mode = "n"},
})
