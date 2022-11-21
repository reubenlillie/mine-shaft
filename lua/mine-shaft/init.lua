-- Initializes the color scheme

-- Shorten function calls
local o = vim.o
local g = vim.g
local cmd = vim.cmd
local nvim_set_hl = vim.api.nvim_set_hl
local tbl_deep_extend = vim.tbl_deep_extend

-- Define dault configuration
local DEFAULT_CONFIG = {
   colors = require('mine-shaft.palette'),
}

-- Set ANSI colors to match the palette
local function apply_term_colors(colors)
   g.terminal_color_0 = colors.darkGray
   g.terminal_color_1 = colors.red
   g.terminal_color_2 = colors.green
   g.terminal_color_3 = colors.yellow
   g.terminal_color_4 = colors.blue
   g.terminal_color_5 = colors.purple
   g.terminal_color_6 = colors.blue
   g.terminal_color_7 = colors.white
   g.terminal_color_8 = colors.lightGray
   g.terminal_color_9 = colors.red
   g.terminal_color_10 = colors.green
   g.terminal_color_11 = colors.yellow
   g.terminal_color_12 = colors.blue
   g.terminal_color_13 = colors.pink
   g.terminal_color_14 = colors.blue
   g.terminal_color_15 = colors.white
   g.terminal_color_background = colors.darkGray
   g.terminal_color_foreground = colors.white
end

-- Apply color scheme
local function apply(configs)
  local colors = configs.colors
  apply_term_colors(colors)
  local groups = require('mine-shaft.groups').setup(configs)

   for group, setting in pairs(groups) do
      nvim_set_hl(0, group, setting)
   end
end

-- Use default configuration
local local_configs = DEFAULT_CONFIG

-- Setup color scheme
local function setup(configs)
   if type(configs) == 'table' then
      local_configs = tbl_deep_extend('force', DEFAULT_CONFIG, configs) --[[@as DefaultConfig]]
   end
end

-- Load color scheme
local function load()
   if vim.version().minor < 7 then
      vim.notify_once('mine-shaft/lua/mine-shaft/init.lua: you must use neovim 0.8.0 or higher')
      return
   end

   -- Reset colors
   if g.colors_name then
      cmd('hi clear')
   end

   -- Restore default syntax highlighting
   if vim.fn.exists('syntax_on') then
      cmd('syntax reset')
   end

   o.background = 'dark'
   o.termguicolors = true
   g.colors_name = 'mine-shaft'

   apply(local_configs)
end

return {
   load = load,
   setup = setup,
   configs = function() return local_configs end,
   colors = function() return local_configs.colors end,
}
