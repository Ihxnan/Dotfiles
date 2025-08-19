return {
    "vim-autoformat/vim-autoformat",
    config = function()
        -- 设置格式化快捷键（这里使用 <leader>f）
        vim.keymap.set('n', '<C-i>', ':Autoformat<CR>', { noremap = true, silent = true, desc = "Autoformat current buffer" })

        -- 如果你想为特定文件类型设置不同的格式化程序
        -- vim.g.formatdef_my_custom_formatter = '"some-formatter-command"'
        -- vim.g.formatters_<filetype> = {'my_custom_formatter'}
    end
}
