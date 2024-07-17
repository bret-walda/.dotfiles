require("zk").setup({
  -- can be "telescope", "fzf", "fzf_lua", "minipick", or "select" (`vim.ui.select`)
  -- it's recommended to use "telescope", "fzf", "fzf_lua", or "minipick"
  picker = "telescope",

  lsp = {
    -- `config` is passed to `vim.lsp.start_client(config)`
    config = {
      cmd = { "zk", "lsp" },
      name = "zk",
      -- on_attach = ...
      -- etc, see `:h vim.lsp.start_client()`
    },

    -- automatically attach buffers in a zk notebook that match the given filetypes
    auto_attach = {
      enabled = true,
      filetypes = { "markdown" },
    },
  },
})

local wk = require("which-key")

wk.add({
{
    { "<leader>z", group = "zk" },
    { "<leader>zb", "<cmd> ZkBacklinks <cr>", desc = "Shows all the backward links" },
    { "<leader>zf", "<cmd> ZkLinks <cr>", desc = "Shows all the forward links" },
    { "<leader>zn", "<cmd> ZkNotes <cr>", desc = "Shows all the notes in the root" },
  }
})
