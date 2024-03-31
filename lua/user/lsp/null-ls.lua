local null_ls_status_ok, null_ls = pcall(require, "none-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.clang_format.with({
			extra_args = { "-assume-filename=.clang-format", "-style=Google" },
		}),
		null_ls.builtins.diagnostics.clang_check,
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.cmake_format,
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.diagnostics.ruff,
	},
})
