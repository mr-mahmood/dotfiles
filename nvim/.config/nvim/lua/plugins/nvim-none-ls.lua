return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.ast_grep,
				null_ls.builtins.formatting.black.with({
					extra_args = {
						{ "--max-line-length", "500" },
						{ "--ignore", "E501" },
					},
				}),
			},
		})
		vim.keymap.set("n", "<leader>sf", vim.lsp.buf.format, {})
	end,
}
