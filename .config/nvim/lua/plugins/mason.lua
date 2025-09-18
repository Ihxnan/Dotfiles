return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = true,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		config = function()
			-- 加载模块
			local mlsp_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
			local lspconfig = require("lspconfig")

			if not mlsp_ok then
				vim.notify("mason-lspconfig 加载失败", vim.log.levels.ERROR)
				return
			end

			-- 只初始化插件，不指定 ensure_installed
			mason_lspconfig.setup({})

			-- 用 ts_ls 替代 tsserver（适配 lspconfig 新版本）
			local servers = {
				-- "lua_ls",
				-- "ts_ls",
				-- "html",
				-- "cssls", -- 此处将 tsserver 改为 ts_ls
				-- "jsonls",
				-- "pyright",
				-- "rust_analyzer",
				-- "clangd",
				-- 移除了 gopls 如果你不需要 Go 开发
			}

			-- LSP 能力配置
			local capabilities = vim.lsp.protocol.make_client_capabilities()
			capabilities.textDocument.completion.completionItem.snippetSupport = true

			-- on_attach 函数
			local on_attach = function(client, bufnr)
				-- 快捷键仅在当前 LSP 关联的缓冲区生效
				local opts = { buffer = bufnr, noremap = true, silent = true }

				-- 显示悬停文档（查看函数/变量的说明）
				vim.keymap.set(
					"n",
					"<C-h>",
					vim.lsp.buf.hover,
					vim.tbl_extend("force", opts, { desc = "显示悬停文档" })
				)

				-- 显示签名帮助（查看函数参数信息）
				vim.keymap.set(
					"n",
					"<C-k>",
					vim.lsp.buf.signature_help,
					vim.tbl_extend("force", opts, { desc = "显示签名帮助" })
				)

				-- 重命名符号（批量修改变量/函数名）
				vim.keymap.set(
					"n",
					"<leader>rn",
					vim.lsp.buf.rename,
					vim.tbl_extend("force", opts, { desc = "重命名符号" })
				)

				-- 显示代码动作（如修复建议、重构选项）
				vim.keymap.set(
					"n",
					"<leader>ca",
					vim.lsp.buf.code_action,
					vim.tbl_extend("force", opts, { desc = "显示代码动作" })
				)

				-- 查看引用（显示变量/函数被引用的位置）
				vim.keymap.set(
					"n",
					"gr",
					vim.lsp.buf.references,
					vim.tbl_extend("force", opts, { desc = "查看引用" })
				)

				-- 跳转到下一个错误/警告
				vim.keymap.set(
					"n",
					"<leader>]",
					vim.diagnostic.goto_next,
					vim.tbl_extend("force", opts, { desc = "跳转到下一个诊断错误" })
				)

				-- 跳转到上一个错误/警告
				vim.keymap.set(
					"n",
					"<leader>[",
					vim.diagnostic.goto_prev,
					vim.tbl_extend("force", opts, { desc = "跳转到上一个诊断错误" })
				)

				-- 打开诊断列表（所有错误集中显示）
				vim.keymap.set(
					"n",
					"<leader>dl",
					vim.diagnostic.setloclist,
					vim.tbl_extend("force", opts, { desc = "打开诊断列表" })
				)

				-- 显示当前行的诊断信息（悬浮窗口）
				vim.keymap.set(
					"n",
					"<leader>dh",
					vim.diagnostic.open_float,
					vim.tbl_extend("force", opts, { desc = "显示当前行诊断信息" })
				)
			end
			-- 配置每个服务器
			for _, server in ipairs(servers) do
				-- 检查服务器是否已安装
				local installed = false
				for _, inst in ipairs(mason_lspconfig.get_installed_servers()) do
					if inst == server then
						installed = true
						break
					end
				end

				if not installed then
					vim.notify(
						"LSP 服务器 " .. server .. " 未安装，请运行 :Mason 安装",
						vim.log.levels.WARN
					)
				end

				-- 配置 Lua 服务器
				if server == "lua_ls" then
					lspconfig[server].setup({
						on_attach = on_attach,
						capabilities = capabilities,
						settings = {
							Lua = {
								runtime = { version = "LuaJIT" },
								diagnostics = { globals = { "vim" } },
								workspace = {
									library = vim.api.nvim_get_runtime_file("", true),
									checkThirdParty = false,
								},
							},
						},
					})
				else
					-- 配置其他服务器（包括 ts_ls）
					lspconfig[server].setup({
						on_attach = on_attach,
						capabilities = capabilities,
					})
				end
			end
		end,
	},
}
