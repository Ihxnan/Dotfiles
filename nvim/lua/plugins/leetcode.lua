return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
    dependencies = {
        -- include a picker of your choice, see picker section for more details
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        -- configuration goes here
        cn = { -- leetcode.cn
            enabled = true, ---@type boolean
            translator = true, ---@type boolean
            translate_problems = true, ---@type boolean
        },
    },
    config = function(_, opts)
        require("leetcode").setup(opts)

        -- 配置快捷键
        vim.keymap.set('n', '<leader>l', ':Leet ')
        -- vim.keymap.set('n', '<leader>lr', '<cmd>Leet run<CR>', {
            -- desc = 'LeetCode: 运行当前代码'
        -- })
        -- vim.keymap.set('n', '<leader>ls', '<cmd>Leet submit<CR>', {
        --     desc = 'LeetCode: 提交当前代码'
        -- })
        -- vim.keymap.set('n', '<leader>lr', '<cmd>Leet reset<CR>', {
        --     desc = 'LeetCode: 重置当前代码'
        -- })
        -- vim.keymap.set('n', '<leader>ll', '<cmd>Leet list<CR>', {
        --     desc = 'LeetCode: 显示题目列表'
        -- })
        -- vim.keymap.set('n', '<leader>lt', '<cmd>Leet test<CR>', {
        --     desc = 'LeetCode: 测试当前代码'
        -- })
    end
}
