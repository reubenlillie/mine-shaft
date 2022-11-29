-- @file Assigns gui arguments for syntax and 🖍️ highlight groups
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 0.1.0
-- @since 1.0.0 Reformat module to return a local table
--              Deprecate local function setup()
--              Add M.load()
-- @see :help group-names
-- @see :help highlight-groups

-- Declare a local table to return public module functions
local M = {}

-- Declare a table of names of programming languages with highlighting files
-- @see lua/mine-shaft/highlight/languages
M.languages = {
  'css',
  'html',
  'javascript',
  'json',
  'lua',
  'markdown',
  'yaml',
}

-- Declare a table of names of plugins with highlighting files
-- @see lua/mine-shaft/highlight/plugins
M.plugins = {
  'nvim-tree',
}

-- Defines 🖍️ highlight groups
-- @param {table} settings Includes a color palette table
-- @return {table} Merged table of highlight groups tables across the color scheme
function M.load(settings)
  -- Access the color palette table
  local palette = settings.palette

  -- The file path for highlight groups
  local path = 'mine-shaft.highlight.'

  -- Import highlight arguments for Neovim’s built-in highlight groups
  local editor = require(path .. 'editor').highlight(palette)
  local syntax = require(path .. 'syntax').highlight(palette)

  -- Merge imported built-in highlight groups
  local groups = vim.tbl_deep_extend('force', editor, syntax)

  -- Import and merge highlight groups for specific programming languages
  for _, language in ipairs(M.languages) do
    groups = vim.tbl_deep_extend('force', groups, require(path .. 'languages.' .. language).highlight(palette))
  end

  -- Import and merge highlight groups for supported plugins
  for _, plugin in ipairs(M.plugins) do
    groups = vim.tbl_deep_extend('force', groups, require(path .. 'plugins.' .. plugin).highlight(palette))
  end

  return groups
end

return M
