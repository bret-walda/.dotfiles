require("oil").setup({
    default_file_explorer = true,
})

local wk = require("which-key")

wk.add({
{
    { "<leader>o", group = "Oil" },
    { "<leader>oo", "<cmd> Oil <cr>", desc = "Start Oil" },
  }
})
