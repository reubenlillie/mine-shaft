-- @file Defines syntax highlighting for JavaScript files (not a bona fide syntax file)
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 1.0.0
-- @see :help highlight
-- @see :help syn-files

-- Declare a local table to return public module functions
local M = {}

-- Set highlight arguments for JavaScript
-- @param {table} A color palette
-- @return {table} Highlight arguments
-- @see :help highlight-args
function M.highlight(palette)
  -- Store the color palette in a shorter variable
  -- @see lua/mine-shaft/palette.lua
  local p = palette

  -- Highlight groups
  -- Line breaks match {@link https://github.com/neovim/neovim/blob/master/runtime/syntax/javascript.vim Neovim’s default syntax file} on GitHub
  -- Default arguments are commented inline
  -- @see :help highlight-groups
  return {
    -- @see https://github.com/neovim/neovim/blob/master/runtime/syntax/javascript.vim
    -- javaScriptComment = {link = 'Comment'},
    -- javaScriptLineComment = {link = 'Comment'},
    -- javaScriptCommentTodo = {link = 'Todo'},
    -- javaScriptSpecial = {link = 'Special'},
    -- javaScriptStringS = {link = 'String'},
    -- javaScriptStringD = {link = 'String'},
    -- javaScriptStringT = {link = 'String'},
    -- javaScriptCharacter = {link = 'Character'},
    -- javaScriptSpecialCharacter = {link = 'javaScriptSpecial'},
    javaScriptNumber = {link = 'Number'}, --javaScriptValue
    -- javaScriptConditional = {link = 'Conditional'},
    -- javaScriptRepeat = {link = 'Repeat'},
    -- javaScriptBranch = {link = 'Conditional'},
    -- javaScriptOperator = {link = 'Operator'},
    -- javaScriptType = {link = 'Type'},
    -- javaScriptStatement = {link = 'Statement'},
    -- javaScriptFunction = {link = 'Function'},
    -- javaScriptBraces = {link = 'Function'},
    -- javaScriptError = {link = 'Error'},
    -- javaScrParenError = {link = 'javaScriptError'},
    -- javaScriptNull = {link = 'Keyword'},
    -- javaScriptBoolean = {link = 'Boolean'},
    -- javaScriptRegexpString = {link = 'String'},

    -- javaScriptIdentifier = {link = 'Identifier'},
    -- javaScriptLabel = {link = 'Label'},
    -- javaScriptException = {link = 'Exception'},
    -- javaScriptMessage = {link = 'Keyword'},
    -- javaScriptGlobal = {link = 'Keyword'},
    -- javaScriptMember = {link = 'Keyword'},
    -- javaScriptDeprecated = {link = 'Exception '},
    -- javaScriptReserved = {link = 'Keyword'},
    -- javaScriptDebug = {link = 'Debug'},
    -- javaScriptConstant = {link = 'Label'},
    -- javaScriptEmbed = {link = 'Special'},
  }
end

return M
