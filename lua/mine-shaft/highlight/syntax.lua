-- @file Defines syntax highlighting
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 1.0.0
-- @see :help syntax-highlighting

-- Declare a local table to return public module functions
local M = {}

-- Set arguments for built-in highlight groups
-- @param {table} A color palette
-- @return {table} Highlight arguments
-- @see :help highlight-args
function M.highlight(palette)
  -- Store the color palette in a shorter variable
  -- @see lua/mine-shaft/palette.lua
  local p = palette

  -- Syntax items
  -- Neovim documentation description commented inline
  -- @see :help syn-files
  -- @see :help group-name
  return {
    Comment = {fg = p.lightGray, italic = true}, -- (preffered) any comment

    Constant = {fg = p.yellow}, -- (preferred) any constant
    String = {link = 'Constant'}, -- a string constant: "this is a string"
    Character = {link = 'Constant'}, -- a character constant: 'c', '\n'
    Number = {fg = p.blue}, -- a number constant: 234, 0xff
    Boolean = {link = 'Constant'}, -- a boolean constant: TRUE, false
    Float = {link = 'Constant'}, -- a floating point constant: 2.3e10

    Identifier = {fg = p.blue}, -- (preferred) any variable name
    Function = {link = 'Identifier'}, -- function name (also: methods for classes)

    Statement = {fg = p.red}, -- (preferred) any statement
    Conditional = {fg = p.yellow}, -- if, then, else, endif, switch, etc.
    Repeat = {link = 'Statement'}, -- for, do, while, etc.
    Label = {link = 'Statement'}, -- case, default, etc.
    Operator = {link = 'Statement'}, -- "sizeof", "+", "*", etc.
    Keyword = {link = 'Statement'}, -- any other keyword
    Exception = {link = 'Statement'}, -- try, catch, throw

    PreProc = {fg = p.purple}, -- (preferred) generic Preprocessor
    Include = {link = 'PreProc'}, -- preprocessor #include
    Define = {link = 'PreProc'}, -- preprocessor #define
    Macro = {link = 'PreProc'}, -- same as Define
    Precondit = {link = 'PreProc'}, -- preprocessor #if, #else, #endif, etc.

    Type = {fg = p.green}, -- (preferred) int, long, char, etc.
    StorageClass = {link = 'Type'}, -- static, register, volatile, etc.
    Structure = {link = 'Type'}, -- struct, union, enum, etc.
    Typedef = {link = 'Type'}, -- A typedef

    Special = {fg = p.pink}, -- (preferred) any special symbol
    SpecialChar = {link = 'Special'}, -- special character in a constant
    Tag = {link = 'Special'}, -- you can use CTRL-] on this
    Delimiter = {link = 'Special'}, -- character that needs attention
    SpecialComment = {link = 'Special'}, -- special things inside a comment
    Debug = {link = 'Special'}, -- debugging statements

    Underlined = {underline = true}, -- (preferred) text that stands out, HTML links

    Ignore = {fg = p.darkGray, bg = p.lightGray, italic = true}, -- (preferred) left blank, hidden  hl-Ignore

    Error = {fg = p.darkGray, bg = p.red}, -- (preferred) any erroneous construct

    Todo = {fg = p.darkGray, bg = p.blue}, -- (preferred) anything that needs extra attention
  }
end

return M
