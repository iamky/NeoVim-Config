return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.eslint_d,
				null_ls.builtins.completion.luasnip,
				null_ls.builtins.completion.spell,
				null_ls.builtins.completion.tags,
				null_ls.builtins.diagnostics.cppcheck,
				null_ls.builtins.diagnostics.cpplint,
				null_ls.builtins.diagnostics.gccdiag,
				null_ls.builtins.diagnostics.misspell,
				null_ls.builtins.diagnostics.php,
				null_ls.builtins.diagnostics.stylelint,
				null_ls.builtins.diagnostics.swiftlint,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.codespell,
				null_ls.builtins.formatting.csharpier,
				null_ls.builtins.formatting.dart_format,
				null_ls.builtins.formatting.eslint_d,
				null_ls.builtins.formatting.fixjson,
				null_ls.builtins.formatting.google_java_format,
				null_ls.builtins.formatting.swiftlint,
				
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
