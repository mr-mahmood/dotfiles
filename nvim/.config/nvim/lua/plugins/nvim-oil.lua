return {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    lazy = false,
    config = function()
        require("oil").setup({
            default_file_explorer = true,
            delete_to_trash = true,
            cleanup_delay_ms = 200,
            watch_for_changes = true,
            columns = {
                "icon",
                -- "permissions",
                -- "size",
                -- "mtime",
            },
            view_options = {
                show_hidden = true,
                natural_order = "fast",
                case_insensitive = true,
            },
            keymaps = {
                ["<CR>"] = "actions.select",
                ["-"] = { "actions.parent", mode = "n" },
            },
        })

        vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

        vim.api.nvim_create_autocmd("User", {
            pattern = "OilEnter",
            callback = vim.schedule_wrap(function(args)
                local oil = require("oil")
                if vim.api.nvim_get_current_buf() == args.data.buf and oil.get_cursor_entry() then
                    oil.open_preview()
                end
            end),
        })
    end,
}
