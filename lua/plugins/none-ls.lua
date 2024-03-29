return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.eslint_d,
			},
		})
		-- format on save
		vim.api.nvim_create_autocmd("BufWritePost", {
			pattern = "*",
			callback = function()
				vim.lsp.buf.format()
			end,
		})
	end,
}
