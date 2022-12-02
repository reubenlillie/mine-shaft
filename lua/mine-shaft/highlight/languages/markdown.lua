-- @file Defines syntax highlighting for Markdown files (not a bona fide syntax file)
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 1.0.0
-- @see :help highlight
-- @see :help syn-files

-- Declare a local table to return public module functions
local M = {}

-- Set highlight arguments for Markdown
-- @param {table} A color palette
-- @return {table} Highlight arguments
-- @see :help highlight-args
function M.highlight(palette)
  -- Store the color palette in a shorter variable
  -- @see lua/mine-shaft/palette.lua
  local p = palette

  -- Highlight groups
  -- Line breaks match {@link https://github.com/neovim/neovim/blob/master/runtime/syntax/markdown.vim Neovim’s default syntax file} on GitHub
  -- Default arguments are commented inline
  -- @see :help highlight-groups
  return {
    -- markdownCodeBlock = {link = 'markdownCodeDelimiter'},

    -- markdownH1 = {link = 'htmlH1'},
    -- markdownH2 = {link = 'htmlH2'},
    -- markdownH3 = {link = 'htmlH3'},
    -- markdownH4 = {link = 'htmlH4'},
    -- markdownH5 = {link = 'htmlH5'},
    -- markdownH6 = {link = 'htmlH6'},
    -- markdownHeadingRule = {link ='markdownRule'},
    -- markdownH1Delimiter = {link = 'markdownHeadingDelimiter'},
    -- markdownH2Delimiter = {link = 'markdownHeadingDelimiter'},
    -- markdownH3Delimiter = {link = 'markdownHeadingDelimiter'},
    -- markdownH4Delimiter = {link = 'markdownHeadingDelimiter'},
    -- markdownH5Delimiter = {link = 'markdownHeadingDelimiter'},
    -- markdownH6Delimiter = {link = 'markdownHeadingDelimiter'},
    markdownHeadingDelimiter = {link = 'htmlTagName'}, -- Delimiter
    -- markdownOrderedListMarker = {link ='markdownListMarker'},
    -- markdownListMarker = {link ='htmlTagName'},
    -- markdownBlockquote = {link ='Comment'},
    -- markdownRule = {link ='PreProc'},

    -- markdownFootnote = {link ='Typedef'},
    -- markdownFootnoteDefinition = {link ='Typedef'},

    -- markdownLinkText = {link ='htmlLink'},
    -- markdownIdDeclaration = {link ='Typedef'},
    -- markdownId = {link ='Type'},
    -- markdownAutomaticLink = {link ='markdownUrl'},
    -- markdownUrl = {link ='Float'},
    -- markdownUrlTitle = {link ='String'},
    -- markdownIdDelimiter = {link ='markdownLinkDelimiter'},
    -- markdownUrlDelimiter = {link ='htmlTag'},
    -- markdownUrlTitleDelimiter = {link ='Delimiter'},

    -- markdownItalic = {link ='htmlItalic'},
    -- markdownItalicDelimiter = {link ='markdownItalic'},
    -- markdownBold = {link ='htmlBold'},
    -- markdownBoldDelimiter = {link ='markdownBold'},
    -- markdownBoldItalic = {link ='htmlBoldItalic'},
    -- markdownBoldItalicDelimiter = {link ='markdownBoldItalic'},
    -- markdownStrike = {link ='htmlStrike'},
    -- markdownStrikeDelimiter = {link ='markdownStrike'},
    -- markdownCodeDelimiter = {link = 'Delimiter'},

    -- markdownEscape = {link ='Special'},
    -- markdownError = {link ='Error'},
  }
end

return M
