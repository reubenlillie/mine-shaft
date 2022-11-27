-- @file Defines syntax highlighting for the Nvim Tree plugin
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 1.0.0
-- @see :help highlight

-- Declare a local table to return public module functions
local M = {}

-- Set highlight arguments for Nvim Tree
-- @param {table} A color palette
-- @return {table} Highlight arguments
-- @see :help highlight-args
function M.highlight(palette)
  -- Store the color palette in a shorter variable
  -- @see lua/mine-shaft/palette.lua
  local p = palette

  -- Highlight groups
  -- Line breaks match those in @see :help nvim-tree-highlight
  -- Default arguments are commented inline
  -- @see :highlight-groups
  return {
    -- NvimTreeSymlink
    -- NvimTreeFolderName = {link = 'Directory'},
    NvimTreeRootFolder = {link = 'Bold'},
    NvimTreeFolderIcon = {link = 'NvimTreeFolderName'},
    -- NvimTreeFileIcon
    NvimTreeEmptyFolderName = {link = 'Comment'}, -- Directory
    NvimTreeOpenedFolderName = {fg = p.blue, italic = true}, -- Directory
    -- NvimTreeExecFile
    -- NvimTreeOpenedFile
    NvimTreeSpecialFile = {link = 'Special'},
    NvimTreeImageFile = {link = 'Special'},
    NvimTreeIndentMarker = {link = 'Comment'},

    -- NvimTreeLspDiagnosticsError = {link = 'DiagnosticError'},
    -- NvimTreeLspDiagnosticsWarning = {link = 'DiagnosticWarn'},
    -- NvimTreeLspDiagnosticsInformation = {link = 'DiagnosticInfo'},
    -- NvimTreeLspDiagnosticsHint = {link = 'DiagnosticHint'},

    NvimTreeGitDirty = {fg = p.red},
    -- NvimTreeGitStaged
    -- NvimTreeGitMerge
    -- NvimTreeGitRenamed
    NvimTreeGitNew = {fg = p.yellow},
    -- NvimTreeGitDeleted
    -- NvimTreeGitIgnored = {link = 'Comment'},

    -- NvimTreeWindowPicker

    NvimTreeNormal = {link = 'Normal'},
    NvimTreeEndOfBuffer = {link = 'EndOfBuffer'},
    -- NvimTreeCursorLine = {link = 'CursorLine'},
    -- NvimTreeCursorLineNr = {link = 'CursorLineNr'},
    -- NvimTreeLineNr = {link = 'LineNr'},
    -- NvimTreeWinSeparator = {link = 'VertSplit'},
    -- NvimTreeCursorColumn = {link = 'CursorColumn'},

    -- NvimTreeFileDirty = {link ='NvimTreeGitDirty'},
    -- NvimTreeFileStaged = {link = 'NvimTreeGitStaged'},
    -- NvimTreeFileMerge = {link = 'NvimTreeGitMerge'},
    -- NvimTreeFileRenamed = {link = 'NvimTreeGitRenamed'},
    -- NvimTreeFileNew = {link = 'NvimTreeGitNew'},
    -- NvimTreeFileDeleted = {link = 'NvimTreeGitDeleted'},
    -- NvimTreeFileIgnored = {link = 'NvimTreeGitIgnored'},

    -- NvimTreeLiveFilterPrefix
    -- NvimTreeLiveFilterValue

    -- NvimTreeBookmark
  }
end

return M

