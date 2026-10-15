return {
  "catppuccin/nvim",
  lazy = true,
  name = "catppuccin",
  opts = {
    term_colors = true,
    -- In a GUI the transparent background reaches Ndx as black, which it draws with
    -- g:ndx_background_opacity, so the window backdrop shows through
    transparent_background = true,
    custom_highlights = function(C)
      return {
        -- no underline on links (e.g. in markdown)
        ["@markup.link.url"] = { fg = C.blue, style = { "italic" } },
        ["@string.special.url"] = { fg = C.blue, style = { "italic" } },
        markdownLinkText = { fg = C.blue, style = {} },
        RainbowRed = { fg = "#E06C75" },
        RainbowYellow = { fg = "#E5C07B" },
        RainbowBlue = { fg = "#61AFEF" },
        RainbowOrange = { fg = "#D19A66" },
        RainbowGreen = { fg = "#98C379" },
        RainbowViolet = { fg = "#C678DD" },
        RainbowCyan = { fg = "#56B6C2" },
        CursorLine = { bg = "NONE" },
      }
    end,
    integrations = {
      aerial = true,
      alpha = true,
      cmp = true,
      dashboard = true,
      flash = true,
      fzf = true,
      grug_far = true,
      gitsigns = true,
      headlines = true,
      illuminate = true,
      indent_blankline = { enabled = true },
      leap = true,
      lsp_trouble = true,
      mason = true,
      markdown = true,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      navic = { enabled = true, custom_bg = "lualine" },
      neotest = true,
      neotree = true,
      noice = true,
      notify = true,
      semantic_tokens = true,
      snacks = true,
      telescope = true,
      treesitter = true,
      treesitter_context = true,
      which_key = true,
    },
  },
  specs = {
    {
      "akinsho/bufferline.nvim",
      optional = true,
      opts = function(_, opts)
        if (vim.g.colors_name or ""):find("catppuccin") then
          opts.highlights = require("catppuccin.special.bufferline").get_theme()
        end
      end,
    },
  },
}
