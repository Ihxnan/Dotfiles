vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 终端模式 ---------- ---
keymap.set("t", "jk", "<C-\\><C-n>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "<CR>", "<ESC>")

-- ---------- 正常模式 ---------- ---
-- <leader> a new window
keymap.set("n", "<leader>wv", "<C-w>s", { desc = "leader a window vertically"})
keymap.set("n", "<leader>wh", "<C-w>v", { desc = "leader a window horizontally " })
keymap.set("n", "<leader>t", "<C-w>s:terminal<CR>i", { desc = "leader a terminal with insert mode" })
keymap.set("n", "<leader>r", ":w<CR><C-w>s:terminal g++ % && ./a.out && rm -f ./a.out<CR>i", { desc = "run the code with g++" })
keymap.set("n", "<F5>", ":w<CR><C-w>s:terminal g++ % && ./a.out && rm -f ./a.out<CR>i", { desc = "run the code with g++" })

-- go window focus {h, j, k, l}
keymap.set("n", "gwh", "<C-w>h", { desc = "go window left" })
keymap.set("n", "gwj", "<C-w>j", { desc = "go window down" })
keymap.set("n", "gwk", "<C-w>k", { desc = "go window up" })
keymap.set("n", "gwl", "<C-w>l", { desc = "go window right" })

-- goto window move {H, J, K, L}
keymap.set("n", "gwH", "<C-w>H", { desc = "goto window left" })
keymap.set("n", "gwJ", "<C-w>J", { desc = "goto window down" })
keymap.set("n", "gwK", "<C-w>K", { desc = "goto window up" })
keymap.set("n", "gwL", "<C-w>L", { desc = "goto window right" })

-- g window quit {d, o}
keymap.set("n", "gwd", "<C-w>q", { desc = "g window delete" })
keymap.set("n", "gwo", "<C-w>o", { desc = "g window delete other" })

-- g window resize {=, -}
vim.keymap.set("n", "gw=", "<C-w>>", { desc = "g window enlarge" })
vim.keymap.set("n", "gw-", "<C-w><", { desc = "g window shrink"})

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- goto buffer {h, l}
keymap.set("n", "gbh", ":bprevious<CR>", {desc = "goto buffer left"})
keymap.set("n", "gbl", ":bnext<CR>", { desc = "goto buffer right" })
keymap.set("n", "gbd", ":bdelete<CR>", { desc = "buffer delete" })

-- 快速保存
keymap.set("n", "<C-S>", ":w<CR>")

-- 快速移动
keymap.set("n", "J", "5j")
keymap.set("n", "K", "5k")

-- 查询跳转
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")
