-- Defines highlight groups
local function setup(configs)
  local colors = configs.colors

  return {
    -- :help group-name
    Comment = {fg = colors.lightGray}, -- any comment

    Constant = {fg = colors.yellow}, -- any constant
    String = {fg = colors.green}, -- a string constant: "this is a string"
    Character = {fg = colors.pink}, -- a character constant: 'c', '\n'
    Number = {fg = colors.blue}, -- a number constant: 234, 0xff
    Boolean = {fg = colors.red}, -- a boolean constant: TRUE, false
    Float = {fg = colors.yellow}, -- a floating point constant: 2.3e10

    Identifier = {fg = colors.blue}, -- any variable name
    Function = {fg = colors.blue}, -- function name (also: methods for classes)

    Statement = {fg = colors.red}, -- any statement
    Conditional = {fg = colors.red}, -- if, then, else, endif, switch, etc.
    Repeat = {fg = colors.red}, -- for, do, while, etc.
    Label = {fg = colors.red}, -- case, default, etc.
    Operator = {fg = colors.red}, -- "sizeof", "+", "*", etc.
    Keyword = {fg = colors.red}, -- any other keyword
    Exception = {fg = colors.red}, -- try, catch, throw

    PreProc = {fg = colors.purple}, -- generic Preprocessor
    Include = {fg = colors.purple}, -- preprocessor #include
    Define = {fg = colors.purple}, -- preprocessor #define
    Macro = {fg = colors.purple}, -- same as Define
    Precondit = {fg = colors.purple}, -- preprocessor #if, #else, #endif, etc.

    Type = {fg = colors.green}, -- int, long, char, etc.
    StorageClass = {fg = colors.green}, -- static, register, volatile, etc.
    Structure = {fg = colors.green}, -- struct, union, enum, etc.
    Typedef = {fg = colors.green}, -- A typedef

    Special = {fg = colors.pink}, -- any special symbol
    SpecialChar = {fg = colors.pink}, -- special character in a constant
    Tag = {fg = colors.pink}, -- you can use CTRL-] on this
    Delimiter = {fg = colors.pink}, -- character that needs attention
    SpecialComment = {fg = colors.pink}, -- special things inside a comment
    Debug = {fg = colors.pink}, -- debugging statements

    Underlined = {underline = true}, -- text that stands out, HTML links

    Ignore = {fg = colors.darkGray, bg = colors.lightGray, italic = true}, -- left blank, hidden  hl-Ignore

    Error = {fg = colors.darkGray, bg = colors.red}, -- any erroneous construct

    Todo = {fg = colors.darkGray, bg = colors.blue}, -- anything that needs extra attention

    -- :help highlight-groups
    ColorColumn = {reverse = true},
    Conceal = {fg = colors.lightGray},
    CurSearch = {fg = colors.darkGray, bg = colors.green, bold = true},
    Cursor = {reverse = true},
    lCursor = {link = 'Cursor'},
    CursorIM = {link = 'Cursor'},
    CursorColumn = {link = 'CursorLine'},
    CursorLine = {fg = 'NONE', bg = colors.black},
    Directory = {link = 'Identifier'},
    DiffAdd = {fg = colors.green},
    DiffChange = {fg = colors.yellow},
    DiffDelete = {fg = colors.red},
    DiffText = {fg = colors.lightGray},
    EndOfBuffer = {link = 'Comment'},
    ErrorMsg = {link = 'Error'},
    WinSeparator = {link = 'Ignore'},
    Folded = {link = 'Ignore'},
    FoldColumn = {link = 'Folded'},
    SignColumn = {link = 'Normal'},
    IncSearch = {fg = colors.darkGray, bg = colors.yellow, bold = true},
    Substitute = {link = 'Sign'},
    LineNr = {fg = colors.white, bg = colors.black, bold = true},
    LineNrAbove = {link = 'Comment'},
    LineNrBelow = {link = 'LineNrAbove'},
    CursorLineNr = {link = 'LineNr'},
    CursorLineFold = {link = 'Folded'},
    CursorLineSign = {link = 'SignColumn'},
    MatchParen = {reverse = true},
    ModeMsg = {fg = colors.white},
    MsgArea = {fg = colors.white},
    MsgSeparator = {fg = colors.white},
    MoreMsg = {fg = colors.white},
    NonText = {fg = colors.white},
    Normal = {fg = colors.white, bg = colors.darkGray},
    Pmenu = {link = 'CursorLine'},
    PmenuSel = {reverse = true, bold = true},
    PmenuSbar = {link = 'CursorLine'},
    PmenuThumb = {bg = colors.yellow},
    PopupNotification = {link = 'Normal'},
    Question = {link = 'MoreMsg'},
    QuickFixLine = {link = 'CursorLine'},
    Search = {link = 'IncSearch'},
    SpecialKey = {link = 'Special', bold = true, italic = true},
    SpellBad = {fg = colors.red, underline = true},
    SpellCap = {link = 'SpellBad'},
    SpellLocal = {link = 'SpellBad'},
    SpellRare = {link = 'SpellBad'},
    StatusLine = {reverse = true, bold = true},
    StatusLineNC = {link = 'Ignore'},
    TabLine = {link = 'Ignore'},
    TabLineFill = {link = 'Normal'},
    TabLineSel = {link = 'Normal'},
    Title = {link = 'Normal'},
    Visual = {link = 'CursorLine'},
    VisualNOS = {link = 'Visual'},
    WarningMsg = {fg = colors.darkGray, bg = colors.yellow},
    Whitespace = {link = 'PreProc', italic = true},
    WildMenu = {fg = colors.darkGray, bg = colors.green},
    WinBar = {link = 'Normal'},
    WinBarNC = {link = 'Comment'},
    Menu = {link = 'CursorLine'},
    Scrollbar = {link = 'PmenuSbar'},
    Tooltip = {link = 'CursorLine'},

    -- HTML
    htmlArg = {link = 'Type'},
    htmlBold = {bold = true},
    htmlEndTag = {link = 'htmlTag'},
    htmlH1 = {link = 'htmlBold'},
    htmlH2 = {link = 'htmlH1'},
    htmlH3 = {link = 'htmlH1'},
    htmlH4 = {link = 'htmlH1'},
    htmlH5 = {link = 'htmlH1'},
    htmlH6 = {link = 'htmlH1'},
    htmlItalic = {italic = true},
    htmlLink = {underline = true},
    htmlSpecialChar = {link = 'Special'},
    htmlSpecialTagName = {link = 'Statement'},
    htmlTag = {fg = colors.white, bg = 'NONE'},
    htmlTagN = {link = 'Statement'},
    htmlTagName = {link = 'Statement'},
    htmlTitle = {link = 'Special'},

    -- Markdown
    markdownCodeBlock = {link = 'Type'},
    markdownCodeDelimiter = {link = 'Type'},
    markdownH1 = {link = 'htmlBold'},
    markdownH1Delimiter = {link = 'Identifier'},
    markdownH2 = {link = 'htmlH1'},
    markdownH2Delimiter = {link = 'markdownH1Delimiter'},
    markdownH3 = {link = 'htmlH1'},
    markdownH3Delimiter = {link = 'markdownH1Delimiter'},
    markdownH4 = {link = 'htmlH1'},
    markdownH4Delimiter = {link = 'markdownH1Delimiter'},
    markdownH5 = {link = 'htmlH1'},
    markdownH5Delimiter = {link = 'markdownH1Delimiter'},
    markdownH6 = {link = 'htmlH1'},
    markdownH6Delimiter = {link = 'markdownH1Delimiter'},
    markdownYamlHead = {link = 'Normal'},

    -- YAML
    yamlBlockMappingKey = {link = 'Constant'},
    yamlDocumentStart = {link = 'Normal'},
    yamlFlowIndicator = {link = 'Normal'},
    yamlFlowString = {link = 'Type'},
    yamlKeyValueDelimiter = {link = 'Normal'},

    -- CSS
    cssAtKeyword = {link = 'Special'},
    cssBraces = {link = 'Comment'},

    -- JavaScript
    javaScriptBoolean = {link = 'Special'},
    javaScriptBraces = {link = 'PreProc'},
    javaScriptConditional = {link = 'Constant'},
    javaScriptConstant = {link = 'Statement'},
    javaScriptEmbed = {fg = colors.white, bold = true},
    javaScriptException = {link = 'Statement'},
    javaScriptGlobal = {link = 'Constant'},
    javaScriptLabel = {link = 'Statement'},
    javaScriptMember = {link = 'Constant'},
    javaScriptNull = {link = 'Special'},
    javaScriptNumber = {link = 'Identifier'},
    javaScriptOperator = {link = 'Identifier'},
    javaScriptParens = {link = 'PreProc'},
    javaScriptRepeat = {link = 'Statement'},
    javaScriptReserved = {link = 'Special'},
    javaScriptSpecial = {link = 'Type'},
    javaScriptStatement = {link = 'Constant'},
    javaScriptStringD = {link = 'Type'},
    javaScriptStringS = {link = 'Type'},
    javaScriptStringT = {link = 'Type'},

    -- NvimTree
    NvimTreeCursorLine = {link = 'CursorLine'},
    NvimTreeEmptyFolderName = {link = 'Comment'},
    NvimTreeEndOfBuffer = {link = 'EndOfBuffer'},
    NvimTreeFolderIcon = {fg = colors.blue},
    NvimTreeFolderName = {fg = colors.blue},
    NvimTreeGitDirty = {fg = colors.red},
    NvimTreeGitNew = {fg = colors.yellow},
    NvimTreeImageFile = {link = 'Special'},
    NvimTreeIn = {bg = colors.green},
    NvimTreeIndentMarker = {fg = colors.lightGray},
    NvimTreeNormal = {link = 'Normal'},
    NvimTreeOpenedFolderName = {fg = colors.blue, italic = true},
    NvimTreeRootFolder = {fg = colors.white, bold = true},
    NvimTreeSpecialFile = {link = 'Special', underline = true},
    NvimTreeVertSplit = {link = 'Comment'},
  }
end

return {
  setup = setup,
}
