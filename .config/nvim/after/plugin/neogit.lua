local neogit = require('neogit')
neogit.setup {}


local wk = require("which-key")
wk.register({
  g = {
      name = "Neogit",
      s = { "<cmd>Neogit<cr> ","Start Neogit" },
  },
}, { prefix = "<leader>" })
