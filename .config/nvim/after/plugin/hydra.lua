local Hydra = require('hydra')
local cmd = require('hydra.keymap-util').cmd

local hint = [[
        _f_: files              _g_: live_grep
        _o_: old_files
        
                                                _<Esc>_
]]

Hydra({
    name = 'Telescope',
    hint = hint,
    config = {
        color = 'teal',
        invoke_on_body = true,
        hint = {
            position = 'middle',
            float_optsnvim = 'rounded',
        },
    },
    mode = 'n',
    body = '<leader>f',
    heads = {
        { 'f', cmd 'Telescope find_files' },
        { 'o', cmd 'Telescope oldfiles', { desc = 'recently opened files' } },
        { 'g', cmd 'Telescope live_grep', { desc = 'find something live' } },
        { '<Esc>', nil, {exit = true, nowait = true } },
    }
})
