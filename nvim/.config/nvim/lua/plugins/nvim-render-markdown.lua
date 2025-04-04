return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
    opts = {},
    config = function()
        require("render-markdown").setup({
            quote = { icon = "▯" },
            checkbox = {
                unchecked = { icon = "✘ " },
                checked = { icon = "✔ " },
                custom = { todo = { rendered = "◯ " } },
            },
            heading = { position = 'inline' },
            pipe_table = { preset = 'double' },
            completions = { lsp = { enabled = true } },
            file_types = { "markdown", "quarto" },
            render_modes = { "n", "c", "t" },
            enabled = true,
        })
    end,
}
