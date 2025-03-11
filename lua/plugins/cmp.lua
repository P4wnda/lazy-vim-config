return {
  "hrsh7th/nvim-cmp",
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      formatting = {
        format = function(entry, vim_item)
          -- Fixes the "format: " issue in completion
          vim_item.abbr = vim_item.abbr:gsub("format: ", "")
          return vim_item
        end,
      },
    })
  end,
}
