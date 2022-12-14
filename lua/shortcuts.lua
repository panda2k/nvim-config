function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<C-k>", ":Files<CR>", { silent = true })
map("n", "<C-j>", ":Trouble document_diagnostics<CR>", { silent = true })

