vim.g.zig_fmt_autosave = 0
require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially

    --[[ cpp = { "clang_format" }, ]]

    --[[ zig = { "zigfmt" }, ]]

    rust = { "rustfmt" },
    -- Use a sub-list to run only the first available formatter
  },
})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
