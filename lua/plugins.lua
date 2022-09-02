local status, packer = pcall(require, 'packer')
if (not status) then 
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]
packer.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'wakatime/vim-wakatime'
    use {
        'svrana/neosolarized.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    }
    use 'L3MON4D3/LuaSnip' -- snippets for cmp
    use 'onsails/lspkind-nvim' -- vscode like pictograms for autocomplete
    use 'hrsh7th/cmp-buffer' -- source for buiffer words
    use 'hrsh7th/cmp-nvim-lsp' -- autcomplete source for native lsp
    use 'hrsh7th/cmp-nvim-lsp-signature-help' -- method signature help
    use 'hrsh7th/nvim-cmp' -- autocompletion
    use 'neovim/nvim-lspconfig' -- LSP
    use 'windwp/nvim-ts-autotag' -- auto close html tags
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
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
    }
end)
