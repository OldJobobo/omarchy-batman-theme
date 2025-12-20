return {
  {
    "bjarneo/aether.nvim",
    name = "aether",
    priority = 1000,
    opts = {
      disable_italics = false,
      colors = {
        -- Monotone shades (base00-base07)
        base00 = "#1b1d1e", -- Default background
        base01 = "#505354", -- Lighter background (status bars)
        base02 = "#fcef0c", -- Selection background
        base03 = "#62605f", -- Comments, invisibles
        base04 = "#c6c5bf", -- Dark foreground
        base05 = "#dadbd6", -- Default foreground
        base06 = "#dadbd6", -- Light foreground
        base07 = "#c6c5bf", -- Light background

        -- Accent colors (base08-base0F)
        base08 = "#e6dc44", -- Variables, errors, red
        base09 = "#fff78e", -- Integers, constants, orange
        base0A = "#f4fd22", -- Classes, types, yellow
        base0B = "#c8be46", -- Strings, green
        base0C = "#62605f", -- Support, regex, cyan
        base0D = "#737174", -- Functions, keywords, blue
        base0E = "#747271", -- Keywords, storage, magenta
        base0F = "#feed6c", -- Deprecated, brown/yellow
      },
    },
    config = function(_, opts)
      require("aether").setup(opts)
      vim.cmd.colorscheme("aether")

      -- Align selection colors with other themes; reapply on colorscheme changes
      local function set_selection()
        local selection_bg = "#fcef0c"
        local selection_fg = "#000000"
        vim.api.nvim_set_hl(0, "Visual", { bg = selection_bg, fg = selection_fg })
        vim.api.nvim_set_hl(0, "VisualNOS", { bg = selection_bg, fg = selection_fg })
      end
      set_selection()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "aether",
        callback = set_selection,
      })

      -- Enable hot reload
      require("aether.hotreload").setup()
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
