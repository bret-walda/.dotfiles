require("fff").setup({})

vim.keymap.set('n', '<leader>fff', function() require("fff").find_files() end)

vim.keymap.set('n', '<leader>cid', function()
    vim.ui.input({ prompt = "Enter Directory"}, function(input)
        if input and input ~= "" then
            require("fff").change_indexing_directory(input)
        end
    end)
end)

vim.keymap.set('n', '<leader>fid', function()
    vim.ui.input({ prompt = "Enter Directory"}, function(input)
        if input and input ~= "" then
            require("fff").find_files_in_dir(input)
        end
    end)
end)

vim.keymap.set('n', '<leader>sf', function() require("fff").scan_files() end)
