return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  opts = {
    -- 默认值之外额外加上 markdown，禁用其中的括号/引号自动配对
    disable_filetype = { "TelescopePrompt", "spectre_panel", "snacks_picker_input", "markdown" },
  },
}
