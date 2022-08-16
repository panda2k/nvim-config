local status, packer = pcall(require, 'packer')
if (not status) then 
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]
packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'svrana/neosolarized.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    }
    use 'L3MON4D3/LuaSnip' -- snippets for cmp
    use 'onsails/lspkind-nvim' -- vscode like pictograms for autocomplete
    use 'hrsh7th/cmp-buffer' -- source for buiffer words
    use 'hrsh7th/cmp-nvim-lsp' -- autcomplete source for native lsp
    use 'hrsh7th/nvim-cmp' -- autocompletion
    use 'neovim/nvim-lspconfig' -- LSP
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'airblade/vim-gitgutter'
    use 'mfussenegger/nvim-jdtls'
    use {
        "junegunn/fzf.vim",
        requires = {
            "junegunn/fzf", run = ":call fzf#install()"
        }
    }
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)
