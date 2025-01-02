local capabilities = require('blink.cmp').get_lsp_capabilities()
local lspconfig = require('lspconfig')

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {},
    handlers = {
        lua_ls = function()
            require('lspconfig').lua_ls.setup({})
        end,
        rust_analyzer = function()
            require('lspconfig').rust_analyzer.setup({})
        end,
        cmake = function()
            require('lspconfig').cmake.setup({})
        end,
    },
})

lspconfig['clangd'].setup({capabilities = capabilities})
lspconfig['erlangls'].setup({})
lspconfig['hls'].setup({
    filetypes = {'haskell', 'lhaskell', 'cabal'},
    root_dir = lspconfig.util.root_pattern("hie.yaml", "stack.yaml", "cabal.project", "*.cabal", "package.yaml"),
})
lspconfig['zls'].setup({})
lspconfig['ocamllsp'].setup({
    root_dir = lspconfig.util.root_pattern("*.opam", "esy.json", "package.json", ".git", "dune-project", "dune-workspace"),
})

require('blink.cmp').setup({
    keymap = {
        preset = 'enter',
        ['<Tab>'] = { 'select_next', 'fallback'},
        cmdline = {
            preset = "enter",
            ['<Tab>'] = { 'select_next', 'fallback'},
        },
    },
    sources = {
       default = { 'lsp', 'path', 'snippets', 'buffer' },
    },
})

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)


vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'


        local opts = {buffer = ev.buf}
        vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, opts)
    end,

})
