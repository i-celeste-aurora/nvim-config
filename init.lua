-- This is my personal Nvim configuration supporting Mac, and Linux , with various plugins configured.
-- This is based  on [jdhao](https://github.com/jdhao)'s confiuration
vim.loader.enable()

local utils = require("utils")

local expected_version = "0.11.5"
utils.is_compatible_version(expected_version)

local config_dir = vim.fn.stdpath("config")
---@cast config_dir string
local termfeatures = vim.g.termfeatures or {}
termfeatures.osc52 = false
vim.g.termfeatures = termfeatures

-- some global settings
require("globals")
-- setting options in nvim
vim.cmd("source " .. vim.fs.joinpath(config_dir, "viml_conf/options.vim"))
-- various autocommands
require("custom-autocmd")
-- all the user-defined mappings
require("mappings")
-- all the plugins installed and their configurations
vim.cmd("source " .. vim.fs.joinpath(config_dir, "viml_conf/plugins.vim"))

-- diagnostic related config
require("diagnostic-conf")

-- colorscheme settings
local color_scheme = require("colorschemes")

-- color_scheme.rand_colorscheme()
-- color_scheme.rand_colorscheme()
color_scheme.colorscheme_conf.sonokai()
