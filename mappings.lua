---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>w"] = {
      ":w <CR>",
      "Save Current Buffer",
    },
    ["<leader>q"] = {
      ":q <CR>",
      "Quit From Current Buffer",
    },
    ["<leader>p"] = { ":%y+<cr>", "Copy to clipboard" },
    ["<leader>s"] = { ":wq <CR>", "Save and Quit" },
    ["<leader>fq"] = { ":q! <CR>", "Force Quit" },
    ["<leader>fr"] = { ":luafile % <CR>", "Refresh LuaFile" },
    ["<Esc>"] = { ":noh <CR>", "Clear Search Result" },

    ["<C-h>"] = { "<C-w>h", "window left" },
    ["<C-l>"] = { "<C-w>l", "window right" },
    ["<C-j>"] = { "<C-w>j", "window down" },
    ["<C-k>"] = { "<C-w>k", "window up" },
    ["<leader>k"] = { ":BufferCloseBuffersLeft <CR>", "window up" },
    ["<leader>ct"] = { ":tabnew <CR>", "Create New Tab" },
    ["<leader>sm"] = { ":ShowMappings <CR>", "Show All Mappings" },
  },
}

M.competitive = {
  plugin = true,
  n = {
    ["<leader>cta"] = { ":CompetiTestAdd <CR>", "Add TestCase" },
    ["<leader>ctr"] = { ":CompetiTest receive <CR>", "Recieve Test Case" },
    ["<leader>cr"] = { ":CompetiTestRun<cr>", "TestCaseRun" },
  },
}

M.nvimtree = {
  plugin = true,
  n = {
    ["<leader>e"] = { ":NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

M.whichkey = {
  n = {
    ["<leader>wu"] = {
      function()
        local input = vim.fn.input "WhichKey: "
        vim.cmd("WhichKey " .. input)
      end,
      "Which-key query lookup",
    },
  },
}

return M
