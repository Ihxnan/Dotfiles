vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>sh", "<C-w>s") -- 垂直新增窗口

-- 窗口导航快捷键
keymap.set("n", "<leader>h", "<C-w>h", { desc = "聚焦到左侧窗口" })
keymap.set("n", "<leader>l", "<C-w>l", { desc = "聚焦到右侧窗口" })
keymap.set("n", "<leader>j", "<C-w>j", { desc = "聚焦到下方窗口" })
keymap.set("n", "<leader>k", "<C-w>k", { desc = "聚焦到上方窗口" })

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<C-L>", ":bnext<CR>")
keymap.set("n", "<C-H>", ":bprevious<CR>")
keymap.set("n", "<C-D>", ":bdelete<CR>")

-- 快速移动
keymap.set("n", "J", "5j")
keymap.set("n", "K", "5k")
