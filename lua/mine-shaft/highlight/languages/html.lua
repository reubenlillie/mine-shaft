-- @file Defines syntax highlighting for HTML files (not a bona fide syntax file)
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 1.0.0
-- @see :help highlight
-- @see :help syn-files

-- Declare a local table to return public module functions
local M = {}

-- Set highlight arguments for HTML
-- @param {table} A color palette
-- @return {table} Highlight arguments
-- @see :help highlight-args
function M.highlight(palette)
  -- Store the color palette in a shorter variable
  -- @see lua/mine-shaft/palette.lua
  local p = palette

  -- Highlight groups
  -- Line breaks match {@link https://github.com/neovim/neovim/blob/master/runtime/syntax/html.vim Neovim’s default syntax file} on GitHub
  -- Default arguments are commented inline
  -- @see :help highlight-groups
  return {
    htmlTag = {fg = p.white, bg = 'NONE'}, -- Function
    htmlEndTag = {link = 'htmlTag'}, -- Identifier
    -- htmlArg = {link = 'Type'},
    -- htmlTagName = {link = 'htmlStatement'},
    -- htmlSpecialTagName = {link = 'Exception'},
    -- htmlMathTagName = {link = 'htmlTagName'},
    -- htmlSvgTagName = {link = 'htmlTagName'},
    -- htmlValue = {link = 'String'},
    -- htmlSpecialChar = {link = 'Special'},

    -- htmlH1 = {link = 'Title'},
    -- htmlH2 = {link = 'htmlH1'},
    -- htmlH3 = {link = 'htmlH2'},
    -- htmlH4 = {link = 'htmlH3'},
    -- htmlH5 = {link = 'htmlH4'},
    -- htmlH6 = {link = 'htmlH5'},
    -- htmlHead = {link = 'PreProc'},
    -- htmlTitle = {link = 'Title'},
    -- htmlBoldItalicUnderline = {link = 'htmlBoldUnderlineItalic'},
    -- htmlUnderlineBold = {link = 'htmlBoldUnderline'},
    -- htmlUnderlineItalicBold = {link = 'htmlBoldUnderlineItalic'},
    -- htmlUnderlineBoldItalic = {link = 'htmlBoldUnderlineItalic'},
    -- htmlItalicUnderline = {link = 'htmlUnderlineItalic'},
    -- htmlItalicBold = {link = 'htmlBoldItalic'},
    -- htmlItalicBoldUnderline = {link = 'htmlBoldUnderlineItalic'},
    -- htmlItalicUnderlineBold = {link = 'htmlBoldUnderlineItalic'},
    htmlLink = {fg = p.blue, underline = true}, -- Underlined
    -- htmlLeadingSpace = {link = 'None'},
    htmlBold = {bold = true},
    htmlBoldUnderline = {bold = true, underline = true},
    htmlBoldItalic = {bold = true, italic = true},
    htmlBoldUnderlineItalic = {bold = true, underline = true, italic = true},
    htmlUnderline = {underline = true},
    htmlUnderlineItalic = {underline = true, italic = true},
    htmlItalic = {italic = true},
    htmlStrike = {strikethrough = true},

    -- htmlPreStmt = {link = 'PreProc'},
    -- htmlPreError = {link = 'Error'},
    -- htmlPreProc = {link = 'PreProc'},
    -- htmlPreAttr = {link = 'String'},
    -- htmlPreProcAttrName = {link = 'PreProc'},
    -- htmlPreProcAttrError = {link = 'Error'},
    -- htmlString = {link = 'String'},
    -- htmlStatement = {link = 'Statement'},
    -- htmlComment = {link = 'Comment'},
    -- htmlCommentNested = {link = 'htmlError'},
    -- htmlCommentError = {link = 'htmlError'},
    -- htmlTagError = {link = 'htmlError'},
    -- htmlEvent = {link = 'javaScript'},
    -- htmlError = {link = 'Error'},

    javaScript = {link = 'Normal'}, -- Special
    -- javaScriptExpression = {link = 'javaScript'},
    -- htmlCssStyleComment = {link = 'Comment'},
    -- htmlCssDefinition = {link = 'Special'},
  }
end

return M
