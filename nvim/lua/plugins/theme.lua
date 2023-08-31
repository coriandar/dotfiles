return {
    "catppuccin/nvim", name = "catppuccin", priority = 1000,
    --"rose-pine/neovim", name = "rose-pine",:w

    config = function()
        vim.cmd.colorscheme "catppuccin-mocha"
        --vim.cmd.colorscheme "rose-pine"
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
}
