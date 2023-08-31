return {
    "nvim-telescope/telescope.nvim", 
    tag = "0.1.2",

    config = function()
        local builtin = require('telescope.builtin')
        -- keymaps
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>pg', builtin.live_grep, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    end
}
