-- @file Defines syntax highlighting for JSON files (not a bona fide syntax file)
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 1.0.0
-- @see :help highlight
-- @see :help syn-files

-- Declare a local table to return public module functions
local M = {}

-- Set highlight arguments for JSON
-- @param {table} A color palette
-- @return {table} Highlight arguments
-- @see :help highlight-args
function M.highlight(palette)
  -- Store the color palette in a shorter variable
  -- @see lua/mine-shaft/palette.lua
  local p = palette

  -- Highlight groups
  -- Line breaks match {@link https://github.com/neovim/neovim/blob/master/runtime/syntax/json.vim Neovim’s default syntax file} on GitHub
  -- Default arguments are commented inline
  -- @see :help highlight-groups
  return {
    -- jsonString = {link = 'String'},
    -- jsonTest = {link = 'Label'},
    -- jsonEscape = {link = 'Special'},
    -- jsonNumber = {link = 'Number'},
    jsonBraces = {link = 'javaScriptBraces'}, -- Delimiter
    jsonNull = {link = 'javaScriptNull'}, -- Function
    -- jsonBoolean = {link = 'Boolean'},
    jsonKeyword = {link = 'Statement'}, -- Label

    -- jsonNumError = {link = 'Error'},
    -- jsonCommentError = {link = 'Error'},
    -- jsonSemicolonError = {link = 'Error'},
    -- jsonTrailingCommaError = {link = 'Error'},
    -- jsonMissingCommaError = {link = 'Error'},
    -- jsonStringSQError = {link = 'Error'},
    -- jsonNoQuotesError = {link = 'Error'},
    -- jsonTripleQuotesError = {link = 'Error'},

    -- jsonQuote = {link = 'Quote'},
    -- jsonNoise = {link = 'Noise'},

    -- NB, The colon (:) separator in JSON "key": "value" pairs
    jsonKeywordMatch = {link = 'Identifier'},
  }
end

return M
