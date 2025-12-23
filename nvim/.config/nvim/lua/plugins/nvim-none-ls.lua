return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.prettier,
				--null_ls.builtins.formatting.ast_grep,
				null_ls.builtins.formatting.black.with({
					extra_args = {
						{ "--max-line-length", "500" },
						{ "--ignore", "E501" },
					},
				}),
				require("none-ls.diagnostics.eslint_d"),
				require("none-ls.diagnostics.eslint"),
			},
		})
		vim.keymap.set("n", "<leader>sf", vim.lsp.buf.format, {})
	end,
}
