-- @file Defines syntax highlighting support for named plugin modules
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 1.0.0

-- Declare a local table to return public module functions
local M = {}

-- Declare a table of names of plugin modules with highlighting files
-- @see lua/mine-shaft/highlight/plugins
M.modules = {
  'nvim-tree',
}

return M
