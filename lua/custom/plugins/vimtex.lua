return
{
	"lervag/vimtex",
  lazy= false,
	config = function()
		vim.g["vimtex_log_ignore"] = { 'warning' }
		vim.g["tex_flavor"] = 'latex'
		vim.g["vimtex_complete_enabled"] = true
		vim.g["vimtex_view_method"] = 'zathura'
		vim.g["vimtex_compiler_progname"] = 'nvr'
		vim.g["vimtex_quickfix_enabled"] = false
		vim.g.maplocalleader = ' '
	end
}
