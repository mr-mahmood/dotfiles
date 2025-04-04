return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        --[[
        notifier = {
            enabled = true,
            timeout = 5000,
        },
        styles = {
            notification = {
               wo = { wrap = true }, -- Wrap notifications
            },
        },
        ]]
        --
    },
    keys = {
        {
            "<leader>gg",
            function()
                Snacks.lazygit()
            end,
            desc = "Lazygit",
        },
    },
}
