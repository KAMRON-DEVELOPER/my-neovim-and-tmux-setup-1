return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Lua formatting
				null_ls.builtins.formatting.stylua,

				-- JavaScript/TypeScript formatting
				null_ls.builtins.formatting.prettier,
				-- null_ls.builtins.diagnostics.eslint_d, -- jshint, eslint_d

				-- Python & Django formatting and linting
				null_ls.builtins.formatting.black, -- autoflake, autopep8, black, isort
				null_ls.builtins.formatting.isort,
				null_ls.builtins.diagnostics.pylint, -- flake8, djlint, ruff, pylint

				-- Rust formatting and linting
				-- null_ls.builtins.formatting.rustfmt,
				-- null_ls.builtins.diagnostics.ltrs,
			},
		})

		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
	end,
}
