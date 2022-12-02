-- @file Defines syntax highlighting support for programming languages
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 1.0.0

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

return M
