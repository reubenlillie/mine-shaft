-- @file Defines syntax highlighting for YAML files (not a bona fide syntax file)
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 1.0.0
-- @see :help highlight
-- @see :help syn-files

-- Declare a local table to return public module functions
local M = {}

-- Set highlight arguments for YAML
-- @param {table} A color palette
-- @return {table} Highlight arguments
-- @see :help highlight-args
function M.highlight(palette)
  -- Store the color palette in a shorter variable
  -- @see lua/mine-shaft/palette.lua
  local p = palette

  -- Highlight groups
  -- Line breaks match {@link https://github.com/neovim/neovim/blob/master/runtime/syntax/yaml.vim Neovim’s default syntax file} on GitHub
  -- Default arguments are commented inline
  -- @see :help highlight-groups
  return {
    -- yamlTodo = {link = 'Todo'},
    -- yamlComment = {link = 'Comment'},

    -- yamlDocumentStart = {link = 'PreProc'},
    -- yamlDocumentEnd = {link = 'PreProc'},

    -- yamlDirectiveName = {link = 'Keyword'},

    -- yamlTAGDirective = {link = 'yamlDirectiveName'},
    -- yamlTagHandle = {link = 'String'},
    -- yamlTagPrefix = {link = 'String'},

    -- yamlYAMLDirective = {link = 'yamlDirectiveName'},
    -- yamlReservedDirective = {link = 'Error'},
    -- yamlYAMLVersion = {link = 'Number'},

    -- yamlString = {link = 'String'},
    -- yamlFlowString = {link = 'yamlString'},
    -- yamlFlowStringDelimiter = {link = 'yamlString'},
    -- yamlEscape = {link = 'SpecialChar'},
    -- yamlSingleEscape = {link = 'SpecialChar'},

    yamlBlockCollectionItemStart = {link = 'Normal'}, -- Label
    yamlBlockMappingKey = {link = 'Constant'}, -- Identifier
    -- yamlBlockMappingMerge = {link = 'Special'},

    -- yamlFlowMappingKey = {link = 'Identifier'},
    -- yamlFlowMappingMerge = {link = 'Special'},

    -- yamlMappingKeyStart = {link = 'Special'},
    -- yamlFlowIndicator = {link = 'Special'},
    -- yamlKeyValueDelimiter = {link = 'Special'},

    -- yamlConstant = {link = 'Constant'},

    -- yamlNull = {link = 'yamlConstant'},
    -- yamlBool = {link = 'yamlConstant'},

    -- yamlAnchor = {link = 'Type'},
    -- yamlAlias = {link = 'Type'},
    -- yamlNodeTag = {link = 'Type'},

    -- yamlInteger = {link = 'Number'},
    -- yamlFloat = {link = 'Float'},
    -- yamlTimestamp = {link = 'Number'},
  }
end

return M
