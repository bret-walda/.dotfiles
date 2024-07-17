local builtin = require('telescope.builtin')

local wk = require("which-key")

wk.add({
{
    { "<leader>f", group = "file" },
    { "<leader>f1", hidden = true },
    { "<leader>fe", desc = "Edit File" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
    { "<leader>fi", "<cmd>Telescope git_files<cr>", desc = "Find Git Files in a directory" },
    { "<leader>fl", "<cmd>Telescope live_grep<cr>", desc = "Does live_grep" },
    { "<leader>fn", desc = "New File" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent File", remap = true },
  }
})
