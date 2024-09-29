-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
  },

  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "E", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
      { "<c-j>", mode = { "n", "x", "o" }, function() require("flash").jump({
        search = { mode = "search", forward = true, wrap = false, max_length = false },
        label = { after = { 0, 0 } },
        pattern = "^"
      }) end, desc = "Jump Line Forward" },
      { "<c-k>", mode = { "n", "x", "o" }, function() require("flash").jump({
        search = { mode = "search", forward = false, wrap = false, max_length = false },
        label = { after = { 0, 0 } },
        pattern = "^"
      }) end, desc = "Jump Line Backward" },
    },
  },
}
