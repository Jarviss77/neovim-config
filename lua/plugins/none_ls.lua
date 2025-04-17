return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.black,
        --  null_ls.builtins.diagnostic.robocop,
        --  null_ls.builtins.formatting.robocop
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
