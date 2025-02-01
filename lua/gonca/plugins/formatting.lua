return {
    'stevearc/conform.nvim',
    opts = {},

    config = function()
        local conform = require("conform")

        conform.setup({
            formatter_by_ft = {
                lua = { "stylua" },
                python = { "black" },
                rust = { "rustfmt", lstp_format = "fallback" },
                tex = { "latexindent" }
            },

            format_on_save = {
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            },

            vim.keymap.set({ "n", "v" }, "<leader>mp", function()
                conform.format({
                    lsp_fallback = true,
                    async = false,
                    timeout_ms = 1000,
                })
            end, { desc = "Format file or range (in visual mode)" })
        })
    end,
}
