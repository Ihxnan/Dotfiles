local opt = vim.opt
local g = vim.g

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"

-- 插件设置
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vimwiki设置
opt.compatible = false
vim.cmd('filetype plugin on')
vim.cmd('syntax on')

-- vim-autoformat配置
-- 设置 clang-format 定义和 C++ 格式化程序
g.formatdef_clangformat_microsoft = '"clang-format -style microsoft -"'
g.formatters_cpp = {'clangformat_microsoft'}

-- 设置 Python 3 主机路径
g.python3_host_prog = "/usr/bin/python3"

