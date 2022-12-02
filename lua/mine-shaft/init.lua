-- @file Initializes the ⛏️ Mine Shaft color scheme
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 0.1.0
-- @since 1.0.0 Reformat module to return a local table
--              Add metadata
--              Refactor apply_term_colors()

-- Declare a local table to return public module functions
local M = {
  _VERSION     = '1.0.0',
  _DESCRIPTION = 'An accessible color scheme for Neovim',
  _URL         = 'https://github.com/reubenlillie/mine-shaft',
  _LICENSE     = 'MIT'
}

-- Define default color scheme settings
local defaults = {
  palette = require('mine-shaft.palette').palette,
}

-- Set the color number arguments used for highlighting in the terminal
-- @param {table} palette Colors to assign to the terminal
-- @return {void}
-- @since 0.1.0
-- @since 0.1.1 Change `colors.cyan` to `colors.blue`
-- @since 1.0.0 Move cterm-colors to lua/mine-shaft/highlight/terminal.lua
-- @see :help ctermfg
-- @see :help termguicolors
-- @see :help cterm-colors
local function apply_term_colors(palette)
  -- Import cterm color assignments
  local colors = require('mine-shaft.highlight.terminal').highlight(palette)

  -- Assign each color value to its global editor variable
  for number, color in ipairs(colors) do
    vim.g[number] = color
  end

  return
end

-- Use default settings initially
local local_settings = defaults

-- Apply color scheme settings
-- @param {table} settings Merged defaults and options
-- @return {void}
local function apply(settings)
  local palette = settings.palette
  apply_term_colors(palette)
  local groups = require('mine-shaft.groups').load(settings)

  for group, setting in pairs(groups) do
    vim.api.nvim_set_hl(0, group, setting)
  end

  return
end

-- Call this funtion to set any `options` in place of `defaults`
-- @param {table} options Passed by the user
-- @return {void}
function M.set(options)
  -- Is the `options` parameter a table?
  if type(options) == 'table' then
    -- Merge the `defaults` and `options`
    local_settings = vim.tbl_deep_extend('force', defaults, options)
  end

  return
end

-- Load color scheme
-- @return {void}
function M.load()
  -- Is the user running a version of Neovim that doesn’t support this color scheme?
  if vim.version().minor < 7 then
    -- Alert the user to use a newer version of Neovim
    vim.notify_once('⚠️  WARNING: mine-shaft/lua/mine-shaft/init.lua: 🥺 It looks like your version of Neovim is too old.\nThe ⛏️ Mine Shaft color scheme only works on Neovim 0.8.0 or higher.\nTry updating or reinstalling Neovim.\nFor instructions, visit: https://github.com/neovim/neovim/wiki/Installing-Neovim')
    return
  end

  -- Is another color scheme already loaded?
  if vim.g.colors_name then
    -- Remove all highlighting groups previously added by the user
    vim.cmd('hi clear')
  end

  -- Can Neovim’s `:syntax` commands be called?
  if vim.fn.exists('syntax_on') then
    -- Reset all syntax highlighting to the defaults
    vim.cmd('syntax reset')
  end

  -- Make sure the terminal background is set to `dark`
  vim.o.background = 'dark'
  -- Make sure the terminal has RGB colors enabled
  vim.o.termguicolors = true
  -- Set the name Neovim’s uses to load the color scheme
  vim.g.colors_name = 'mine-shaft'

  -- The ⛏️ Mine Shaft is ready!
  apply(local_settings)

  return
end

-- Make the settings public
-- @return {table} The merged defaults and any optional settings
function M.settings()
  return local_settings
end

-- Make the color palette public
-- @return {table} The merged default color palette and any optional additions or subsitutions
function M.palette()
  return local_settings.palette
end

return M
