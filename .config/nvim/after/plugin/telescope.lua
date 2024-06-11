local builtin = require('telescope.builtin')

local wk = require("which-key")

wk.register({
  f = {
    name = "file", -- optional group name
    f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
    r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false, }, -- additional options for creating the keymap
    n = { "New File" }, -- just a label. don't create any mapping
    i = { "<cmd>Telescope git_files<cr>", "Find Git Files in a directory"},
    l = { "<cmd>Telescope live_grep<cr>", "Does live_grep"},
    e = "Edit File", -- same as above
    ["1"] = "which_key_ignore",  -- special label to hide it in the popup
    g = { function() builtin.grep_string({search = vim.fn.input("Grep > ")}); end, "Grep" } -- you can also pass functions!
  },
}, { prefix = "<leader>" })
