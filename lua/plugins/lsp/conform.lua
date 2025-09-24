return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			format_on_save = {
				timeout_ms = 5000,
				lsp_format = "fallback",
			},
			formatters_by_ft = {
				javascript = { "prettier" },
				lua = { "stylua" },
				python = { "ruff" },
				go = { "gofmt", "goimports" },
				c = { "clang-format" },
			},
			formatters = {
				["clang-format"] = {
					prepend_args = { "-style=file", "-fallback-style=LLVM" },
				},
			},
		})

		vim.keymap.set("n", "<leader>mf", function()
			require("conform").format({ bufnr = 0 })
		end)
	end,
}
