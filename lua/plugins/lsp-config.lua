return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"gopls",
					"terraformls",
					"tflint",
					"yamlls",
					"templ",
					"ansiblels",
					"htmx",
					"ts_ls",
					"tailwindcss",
					"pylsp",
					"kotlin_language_server",
					"gradle_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- local lspconfig = require("lspconfig")
			local opts = {}
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
			})
			vim.lsp.config("gopls", {
				capabilities = capabilities,
			})
			vim.lsp.config("templ", {
				capabilities = capabilities,
			})
			vim.lsp.config("terraformls", {
				capabilities = capabilities,
			})
			vim.lsp.config("tflint", {
				capabilities = capabilities,
			})
			vim.lsp.config("pylsp", {
				capabilities = capabilities,
			})
			vim.lsp.config("yamlls", {
				capabilities = capabilities,
				settings = {
					yaml = {
						schemas = {
							kubernetes = "*.yaml",
							["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
							["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
							["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
							["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
							["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
							["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
							["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
							["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
							["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
							["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
							["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
							["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}",
						},
					},
				},
			})
			vim.lsp.config("lemminx", {
				capabilities = capabilities,
			})
			vim.lsp.config("htmx", {
				capabilities = capabilities,
			})
			vim.lsp.config("ts_ls", {
				capabilities = capabilities,
			})
			vim.lsp.config("tailwindcss", {
				capabilities = capabilities,
			})
			vim.lsp.config("kotlin_language_server", {
				capabilities = capabilities,
			})
			vim.lsp.config("gradle_ls", {
				capabilities = capabilities,
			})

			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "LSP go to declaration" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP go to definition" })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
			vim.keymap.set("n", "<C-s>", vim.lsp.buf.signature_help, opts)
			vim.keymap.set("n", "<C-f>", vim.diagnostic.open_float, opts)
			vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts)
			vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts)
			vim.keymap.set("n", "<leader>wl", function()
				print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
			end, opts)
			vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, opts)
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
			vim.keymap.set("n", "<leader>f", function()
				vim.lsp.buf.format({ async = true })
			end, opts)
			vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])
		end,
	},
}
