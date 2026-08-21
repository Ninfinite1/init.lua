return
{
    {
    'nvim-treesitter/nvim-treesitter',
    dependencies = { 'neovim-treesitter/treesitter-parser-registry' },
    build = ':TSUpdate',
    config = function()
	require('nvim-treesitter').setup {
	    install_dir = vim.fn.stdpath('data') .. '/site',
	}
	require('nvim-treesitter').install { 'rust', 'python', 'typescript' }
	vim.api.nvim_create_autocmd('FileType', {
	    pattern = { 'rust', 'python', 'typescript' },
	    callback = function()
	    vim.treesitter.start()                                    -- highlighting
	    vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'     -- folds
	    vim.wo.foldmethod = 'expr'
	    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()" -- indentation
	    end,
	})
    end,
    },
}
