--- This module will load a random colorscheme on nvim startup process.
local utils = require("utils")

local M = {}

-- Colorscheme to its directory name mapping, because colorscheme repo name is not necessarily
-- the same as the colorscheme name itself.
M.colorscheme_conf = {
  kanagawa = function()
    vim.cmd("colorscheme kanagawa-wave")
  end,
  cs = function()
    vim.cmd([[colorscheme charleston]])
  end,
  gruvbox = function()
    vim.cmd([[colorscheme gruvbox]])
  end,
  tokyonight = function()
    vim.cmd([[colorscheme tokyonight]])
  end,
  tokyodark = function()
    vim.cmd([[colorscheme tokyodark]])
  end,
  gruvbox = function()
    vim.cmd([[colorscheme gruvbox]])
  end,
  everforest = function()
    vim.cmd([[colorscheme everforest]])
  end,
  sonokai = function()
    vim.cmd([[colorscheme sonokai]])
  end,
  melange = function()
    vim.cmd([[colorscheme melange]])
  end,
}

--- Use a random colorscheme from the pre-defined list of colorschemes.
M.rand_colorscheme = function()
  local colorscheme = utils.rand_element(vim.tbl_keys(M.colorscheme_conf))

  -- Load the colorscheme and its settings
  M.colorscheme_conf[colorscheme]()
end

return M
