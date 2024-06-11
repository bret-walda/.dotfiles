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

wk.register({
  z = {
      name = "zk",
      f = { "<cmd> ZkLinks <cr>", "Shows all the forward links"},
      b = { "<cmd> ZkBacklinks <cr>", "Shows all the backward links"},
      n = { "<cmd> ZkNotes <cr>", "Shows all the notes in the root"},
  },
}, { prefix = "<leader>" })
