return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = {
          -- This is the setting that enables the ghost text
          auto_trigger = true,
          keymap = {
            accept = "<Tab>", -- Use Ctrl+L to accept the suggestion
            dismiss = "<C-]>", -- Use Ctrl+H to dismiss it
          },
        },
        panel = {
          enabled = false, -- Keep this false unless you want the side panel
        },
      })
    end,
  },
  {
    -- This plugin is the bridge between copilot and nvim-cmp
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup()
    end,
  },
}
