-- @file Defines highlighting for the editor
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 1.0.0
-- @see :help highlight

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

  -- Highlight groups
  -- Neovim documentation description commented inline
  -- @see :help highlight-groups
  return {
    -- Used for the columns set with @see :help colorcolumn
    ColorColumn = {reverse = true},

    -- Placeholder characters substituted for concealedtext @see :help conceallevel
    Conceal = {fg = p.lightGray},

    -- Used for highlighting a search pattern under the cursor @see :help hlsearch
    CurSearch = {fg = p.darkGray, bg = p.green, bold = true},

    -- Character under the cursor
    Cursor = {reverse = true},

    -- Character under the cursor when language-mapping is used @see :help guicursor
    lCursor = {link = 'Cursor'},

    -- Like Cursor, but used when in IME mode
    CursorIM = {link = 'Cursor'},

    -- Screen-column at the cursor @see :help cursorcolumn
    CursorColumn = {link = 'CursorLine'},

    -- Screen-line at the cursor @see :help cursorline
    -- Low-priority if foreground (ctermfg OR guifg) is not set
    CursorLine = {fg = 'NONE', bg = p.black},

    -- Directory names (and other special names in listings)
    Directory = {link = 'Identifier'},

    -- Diff mode: Added line
    DiffAdd = {fg = p.green},

    -- Diff mode: Changed line
    DiffChange = {fg = p.yellow},

    -- Diff mode: Deleted line
    DiffDelete = {fg = p.red},

    -- Diff mode: Changed text within a changed line
    DiffText = {fg = p.lightGray},

    -- Filler lines (~) after the end of the buffer
    -- By default, this is highlighted like hl-NonText
    EndOfBuffer = {link = 'Comment'},

    -- Cursor in a focused terminal
    TermCursor = {link = 'Cursor'},

    -- Cursor in an unfocused terminal
    TermCursor = {link = 'Ignore'},

    -- Error messages on the command line
    ErrorMsg = {link = 'Error'},

    -- Separators between window splits
    WinSeparator = {link = 'Ignore'},

    -- Line used for closed folds
    Folded = {link = 'Ignore'},

    -- @see :help foldcolumn
    FoldColumn = {link = 'Folded'},

    -- Column where signs are displayed @see :help signs
    SignColumn = {link = 'Normal'},

    -- @see :help incsearch (e.g., ":s/find/replace/c")
    IncSearch = {fg = p.darkGray, bg = p.yellow, bold = true},

    -- @see substitute
    Substitute = {link = 'Sign'},

    -- Line number for ":number" and ":#" commands @see :help number and :help relativenumber
    LineNr = {fg = p.white, bg = p.black, bold = true},

    -- Line number for when the 'relativenumber' option is set, above the cursor line
    LineNrAbove = {link = 'Comment'},

    -- Line number for when the 'relativenumber' option is set, below the cursor line
    LineNrBelow = {link = 'LineNrAbove'},

    -- Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or is "both", for the cursor line
    CursorLineNr = {link = 'LineNr'},

    -- Like FoldColumn when 'cursorline' is set for the cursor line
    CursorLineFold = {link = 'Folded'},

    -- Like SignColumn when 'cursorline' is set for the cursor line
    CursorLineSign = {link = 'SignColumn'},

    -- Character under the cursor or just before it, if it is a paired bracket, and its match
    MatchParen = {reverse = true},

    -- @see :help showmode (e.g., "-- INSERT --"
    ModeMsg = {fg = p.white},

    -- Area for messages and cmdline
    MsgArea = {fg = p.white},

    -- Separator for scrolled messages @see :help msgsep
    MsgSeparator = {fg = p.white},

    -- @see :help more-prompt
    MoreMsg = {fg = p.white},

    -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text
    -- (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). 
    -- @see :help hl-EndOfBuffer
    NonText = {fg = p.white},

    -- Normal text
    Normal = {fg = p.white, bg = p.darkGray},

    -- Normal text in floating windows
    NormalFloat = {link = 'Normal'},

    -- Normal text in non-current windows
    NormalFloatNC = {link = 'Normal'},

    -- Popup menu: Normal item
    Pmenu = {link = 'CursorLine'},

    -- Popup menu: Selected item
    PmenuSel = {reverse = true, bold = true},

    -- Popup menu: Scrollbar
    PmenuSbar = {link = 'CursorLine'},

    -- Popup menu: Thumb of the scrollbar
    PmenuThumb = {bg = p.yellow},

    -- Prompt for and yes/no questions @see hit-enter
    Question = {link = 'MoreMsg'},

    -- Current quickfix item in the quickfix window
    -- Combined with hl-CursorLine when the cursor is there
    QuickFixLine = {link = 'CursorLine'},

    -- Last search pattern highlighting @see :help hlsearch
    -- Also used for similar items that need to stand out
    Search = {link = 'IncSearch'},

    -- Unprintable characters: Text displayed differently from what it really is
    -- But not 'listchars' whitespace
    SpecialKey = {link = 'Special', bold = true, italic = true},

    -- Word that is not recognized by the spellchecker
    -- Combined with the highlighting used otherwise
    SpellBad = {fg = p.red, underline = true},

    -- Word that should start with a capital
    -- Combined with the highlighting used otherwise
    SpellCap = {link = 'SpellBad'},

    -- Word that is recognized by the spellchecker as one that is used in another region @see :help speall
    -- Combined with the highlighting used otherwise
    SpellLocal = {link = 'SpellBad'},

    -- Word that is recognized by the spellchecker as one that is hardly ever used @see :help spell
    -- Combined with the highlighting used otherwise
    SpellRare = {link = 'SpellBad'},

    -- Status line of current window
    StatusLine = {reverse = true, bold = true},

    -- Status lines of not-current windows
    -- Note: If this is equal to "StatusLine", Vim will use "^^^" in the status line of the current window
    StatusLineNC = {link = 'Ignore'},

    -- Tab pages line, not active tab page label
    TabLine = {link = 'Ignore'},

    -- Tab pages line, where there are no labels
    TabLineFill = {link = 'Normal'},

    -- Tab pages line, active tab page label
    TabLineSel = {link = 'Normal'},

    -- Titles for output from ":set all", ":autocmd" etc
    Title = {link = 'Normal'},

    -- Visual mode selection
    Visual = {link = 'CursorLine'},

    -- Visual mode selection when vim is "Not Owning the Selection"
    VisualNOS = {link = 'Visual'},

    -- Visual mode selection when vim is "Not Owning the Selection"
    WarningMsg = {fg = p.darkGray, bg = p.yellow},

    -- "nbsp", "space", "tab", "multispace", "lead" and "trail" in @see :help listchars
    Whitespace = {link = 'PreProc', italic = true},

    -- Current match in @see :help wildmenu
    WildMenu = {fg = p.darkGray, bg = p.green},

    -- Window bar of current window -- Window bar of current window -- Window bar of current window -- Window bar of current window
    WinBar = {link = 'Normal'},

    -- Window bar of not-current windows
    WinBarNC = {link = 'Comment'},

    -- Current font, background and foreground colors of the menus; also used for the toolbar; applicable highlight arguments: font, guibg, guifg,
    Menu = {link = 'CursorLine'},

    -- Current background and foreground of the main window's scrollbars; applicable highlight arguments: guibg, guifg
    Scrollbar = {link = 'PmenuSbar'},

    -- Current font, background and foreground of the tooltips; applicable highlight arguments: font, guibg, guifg
    Tooltip = {link = 'CursorLine'},
  }
end

return M
