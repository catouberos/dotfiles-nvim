-- Utilities for creating configurations
local util = require("formatter.util")

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {
    -- Formatter configurations for filetype "lua" go here
    -- and will be executed in order
    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    javascript = {
      require("formatter.filetypes.javascript").prettier,
    },

    typescript = {
      require("formatter.filetypes.typescript").prettier,
    },

    typescriptreact = {
      require("formatter.filetypes.typescriptreact").prettier,
    },

    vue = {
      require("formatter.filetypes.vue").prettier,
    },

    java = {
      require("formatter.filetypes.java").clangformat,
    },
  },
})
