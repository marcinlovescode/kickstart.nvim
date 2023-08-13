return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-neotest/neotest-plenary",
    "nvim-neotest/neotest-go",
    "marilari88/neotest-vitest",
    "nvim-neotest/neotest-vim-test",
    "haydenmeade/neotest-jest",
    "nvim-neotest/neotest-python" },
  keys = {
    {
      "<leader>tF",
      "<cmd>w|lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>",
      desc =
      "Debug File"
    },
    {
      "<leader>tL",
      "<cmd>w|lua require('neotest').run.run_last({strategy = 'dap'})<cr>",
      desc =
      "Debug Last"
    },
    { "<leader>ta", "<cmd>w|lua require('neotest').run.attach()<cr>",                desc = "Attach" },
    { "<leader>tf", "<cmd>w|lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "File" },
    { "<leader>tl", "<cmd>w|lua require('neotest').run.run_last()<cr>",              desc = "Last" },
    { "<leader>tn", "<cmd>w|lua require('neotest').run.run()<cr>",                   desc = "Nearest" },
    {
      "<leader>tN",
      "<cmd>w|lua require('neotest').run.run({strategy = 'dap'})<cr>",
      desc =
      "Debug Nearest"
    },
    { "<leader>to", "<cmd>w|lua require('neotest').output.open({ enter = true })<cr>", desc = "Output" },
    { "<leader>ts", "<cmd>w|lua require('neotest').run.stop()<cr>",                    desc = "Stop" },
    { "<leader>tS", "<cmd>w|lua require('neotest').summary.toggle()<cr>",              desc = "Summary" },
  },

  config = function()
    require("neotest").setup {
      adapters = {
        require "neotest-go",
        require "neotest-vitest",
        require "neotest-vim-test",
        require "neotest-python",
        require("neotest-jest")({
          jestCommand = "npm test --",
          jestConfigFile = "jest.config.js",
          env = { CI = true },
          cwd = function(path)
            return vim.fn.getcwd()
          end
        }), {
      },
      },
    }
  end
}

