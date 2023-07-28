-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },
  TelescopeBorder = {
    fg = "#8aadf4",
  },
  CmpPmenu = {
    bg = "#171825",
  },
  Pmenu = {
    bg = "#171825",
  },
  TelescopeNormal = {
    bg = "#171825",
  },
  TelescopePromptTitle = {
    bg = "blue",
  },
  TelescopePromptBorder = {
    fg = "#8aadf4",
  },
}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
