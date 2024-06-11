require("oil").setup({
    default_file_explorer = true,
})

local wk = require("which-key")

wk.register({
  o = {
     name = "Oil",
     o = { "<cmd> Oil <cr>","Start Oil"},
  },
}, { prefix = "<leader>" })
