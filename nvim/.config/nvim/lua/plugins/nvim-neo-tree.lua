return {

    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true, -- Always show hidden files
                    hide_dotfiles = false, -- Do not hide dotfiles (files starting with .)
                    hide_gitignored = false, -- Show git-ignored files as well
                },
            },
        })
        vim.keymap.set("n", "<leader>to", ":Neotree source=filesystem reveal=true position=right<CR>")
        vim.keymap.set("n", "<leader>te", ":Neotree close<CR>")
    end,
}
