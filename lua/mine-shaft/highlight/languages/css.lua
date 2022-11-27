-- @file Defines syntax highlighting for CSS files (not a bona fide syntax file)
-- @author Reuben L. Lillie <https://zirk.us/@reubenlillie>
-- @since 1.0.0
-- @see :help highlight
-- @see :help syn-files

-- Declare a local table to return public module functions
local M = {}

-- Set highlight arguments for CSS
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
    -- cssComment = {link = 'Comment'},
    -- cssVendor = {link = 'Comment'},
    -- cssHacks = {link = 'Comment'},
    -- cssTagName = {link = 'Statement'},
    -- cssDeprecated = {link = 'Error'},
    -- cssSelectorOp = {link = 'Special'},
    -- cssSelectorOp2 = {link = 'Special'},
    -- cssAttrComma = {link = 'Special'},

    -- cssAnimationProp = {link = 'cssProp'},
    -- cssBackgroundProp = {link = 'cssProp'},
    -- cssBorderProp = {link = 'cssProp'},
    -- cssBoxProp = {link = 'cssProp'},
    -- cssCascadeProp = {link = 'cssProp'},
    -- cssColorProp = {link = 'cssProp'},
    -- cssContentForPagedMediaProp = {link = 'cssProp'},
    -- cssDimensionProp = {link = 'cssProp'},
    -- cssFlexibleBoxProp = {link = 'cssProp'},
    -- cssFontProp = {link = 'cssProp'},
    -- cssGeneratedContentProp = {link = 'cssProp'},
    -- cssGridProp = {link = 'cssProp'},
    -- cssHyerlinkProp = {link = 'cssProp'},
    -- cssInteractProp = {link = 'cssProp'},
    -- cssLineboxProp = {link = 'cssProp'},
    -- cssListProp = {link = 'cssProp'},
    -- cssMarqueeProp = {link = 'cssProp'},
    -- cssMultiColumnProp = {link = 'cssProp'},
    -- cssPagedMediaProp = {link = 'cssProp'},
    -- cssPositioningProp = {link = 'cssProp'},
    -- cssObjectProp = {link = 'cssProp'},
    -- cssPrintProp = {link = 'cssProp'},
    -- cssRubyProp = {link = 'cssProp'},
    -- cssSpeechProp = {link = 'cssProp'},
    -- cssTableProp = {link = 'cssProp'},
    -- cssTextProp = {link = 'cssProp'},
    -- cssTransformProp = {link = 'cssProp'},
    -- cssTransitionProp = {link = 'cssProp'},
    -- cssUIProp = {link = 'cssProp'},
    -- cssIEUIProp = {link = 'cssProp'},
    -- cssAuralProp = {link = 'cssProp'},
    -- cssRenderProp = {link = 'cssProp'},
    -- cssMobileTextProp = {link = 'cssProp'},

    -- cssAnimationAttr = {link = 'cssAttr'},
    -- cssBackgroundAttr = {link = 'cssAttr'},
    -- cssBorderAttr = {link = 'cssAttr'},
    -- cssBoxAttr = {link = 'cssAttr'},
    -- cssContentForPagedMediaAttr = {link = 'cssAttr'},
    -- cssDimensionAttr = {link = 'cssAttr'},
    -- cssFlexibleBoxAttr = {link = 'cssAttr'},
    -- cssFontAttr = {link = 'cssAttr'},
    -- cssGeneratedContentAttr = {link = 'cssAttr'},
    -- cssGridAttr = {link = 'cssAttr'},
    -- cssHyerlinkAttr = {link = 'cssAttr'},
    -- cssInteractAttr = {link = 'cssAttr'},
    -- cssLineboxAttr = {link = 'cssAttr'},
    -- cssListAttr = {link = 'cssAttr'},
    -- cssMarginAttr = {link = 'cssAttr'},
    -- cssMarqueeAttr = {link = 'cssAttr'},
    -- cssMultiColumnAttr = {link = 'cssAttr'},
    -- cssPaddingAttr = {link = 'cssAttr'},
    -- cssPagedMediaAttr = {link = 'cssAttr'},
    -- cssPositioningAttr = {link = 'cssAttr'},
    -- cssObjectAttr = {link = 'cssAttr'},
    -- cssGradientAttr = {link = 'cssAttr'},
    -- cssPrintAttr = {link = 'cssAttr'},
    -- cssRubyAttr = {link = 'cssAttr'},
    -- cssSpeechAttr = {link = 'cssAttr'},
    -- cssTableAttr = {link = 'cssAttr'},
    -- cssTextAttr = {link = 'cssAttr'},
    -- cssTransformAttr = {link = 'cssAttr'},
    -- cssTransitionAttr = {link = 'cssAttr'},
    -- cssUIAttr = {link = 'cssAttr'},
    -- cssIEUIAttr = {link = 'cssAttr'},
    -- cssAuralAttr = {link = 'cssAttr'},
    -- cssRenderAttr = {link = 'cssAttr'},
    -- cssCascadeAttr = {link = 'cssAttr'},
    -- cssCommonAttr = {link = 'cssAttr'},

    -- cssPseudoClassId = {link = 'PreProc'},
    -- cssPseudoClassLang = {link = 'Constant'},
    -- cssValueLength = {link = 'Number'},
    -- cssValueInteger = {link = 'Number'},
    -- cssValueNumber = {link = 'Number'},
    -- cssValueAngle = {link = 'Number'},
    -- cssValueTime = {link = 'Number'},
    -- cssValueFrequency = {link = 'Number'},
    -- cssFunction = {link = 'Constant'},
    -- cssURL = {link = 'String'},
    -- cssFunctionName = {link = 'Function'},
    -- cssFunctionComma = {link = 'Function'},
    -- cssColor = {link = 'Constant'},
    -- cssIdentifier = {link = 'Function'},
    -- cssAtRule = {link = 'Include'},
    -- cssAtKeyword = {link = 'PreProc'},
    -- cssImportant = {link = 'Special'},
    -- cssCustomProp = {link = 'Special'},
    cssBraces = {link = 'Normal'}, -- Function
    -- cssBraceError = {link = 'Error'},
    -- cssError = {link = 'Error'},
    -- cssUnicodeEscape = {link = 'Special'},
    -- cssStringQQ = {link = 'String'},
    -- cssStringQ = {link = 'String'},
    -- cssAttributeSelector = {link = 'String'},
    -- cssMediaType = {link = 'Special'},
    -- cssMediaComma = {link = 'Normal'},
    -- cssAtRuleLogical = {link = 'Statement'},
    -- cssMediaProp = {link = 'cssProp'},
    -- cssMediaAttr = {link = 'cssAttr'},
    -- cssPagePseudo = {link = 'PreProc'},
    -- cssPageMarginProp = {link = 'cssAtKeyword'},
    -- cssPageProp = {link = 'cssProp'},
    -- cssKeyFrameProp = {link = 'Constant'},
    -- cssFontDescriptor = {link = 'Special'},
    -- cssFontDescriptorProp = {link = 'cssProp'},
    -- cssFontDescriptorAttr = {link = 'cssAttr'},
    -- cssUnicodeRange = {link = 'Constant'},
    -- cssClassName = {link = 'Function'},
    -- cssClassNameDot = {link = 'Function'},
    -- cssProp = {link = 'StorageClass'},
    -- cssAttr = {link = 'Constant'},
    -- cssUnitDecorators = {link = 'Number'},
    -- cssNoise = {link = 'Noise'},
  }
end

return M
