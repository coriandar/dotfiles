return {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- last release is way too old and doesn't work on Windows
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },

    config = function()
        require("nvim-treesitter.configs").setup({
            highlight = { enable = true },
            sync_install = false,
            ensure_installed = {
                "vimdoc",
                "javascript",
                "typescript",
                "c",
                "lua",
                "rust",
                "java",
                "bash",
                "html",
                "json",
                "markdown",
                "markdown_inline",
                "php",
            },
        })
    end
}
