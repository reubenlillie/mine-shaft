-- @file Defines syntax highlighting for Lua files (not a bona fide syntax file)
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 1.0.0
-- @see :help highlight
-- @see :help syn-files

-- Declare a local table to return public module functions
local M = {}

-- Set highlight arguments for Lua
-- @param {table} A color palette
-- @return {table} Highlight arguments
-- @see :help highlight-args
function M.highlight(palette)
  -- Store the color palette in a shorter variable
  -- @see lua/mine-shaft/palette.lua
  local p = palette

  -- Highlight groups
  -- Line breaks match {@link https://github.com/neovim/neovim/blob/master/runtime/syntax/css.vim Neovim’s default syntax file} on GitHub
  -- Default arguments are commented inline
  -- @see :help highlight-groups
  return {
    -- luaStatement = {link = 'Normal'},
    -- luaRepeat = {link = 'Repeat'},
    -- luaFor = {link = 'Repeat'},
    -- luaString = {link = 'String'},
    -- luaString2 = {link = 'String'},
    -- luaStringDelimiter = {link = 'luaString'},
    -- luaNumber = {link = 'Number'},
    -- luaOperator = {link = 'Operator'},
    -- luaSymbolOperator = {link = 'luaOperator'},
    -- luaConstant = {link = 'Constant'},
    -- luaCond = {link = 'Conditional'},
    -- luaCondElse = {link = 'Conditional'},
    -- luaFunction = {link = 'Function'},
    -- luaMetaMethod = {link = 'Function'},
    -- luaComment = {link = 'Comment'},
    -- luaCommentDelimiter = {link = 'luaComment'},
    -- luaTodo = {link = 'Todo'},
    luaTable = {link = 'Normal'}, -- Structure
    -- luaError = {link = 'Error'},
    -- luaParenError = {link = 'Error'},
    -- luaSpecial = {link = 'SpecialChar'},
    -- luaFunc = {link = 'Identifier'},
    -- luaLabel = {link = 'Label'},
  }
end

return M
