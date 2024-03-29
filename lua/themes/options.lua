local M = {}

M.options = function(c)
  return
  {
    -- Normal
    { "Normal",       { fg = c.fg, bg = c.bg } },
    { "NormalNC",     { fg = c.info, bg = c.bg } },
    { "NormalFloat",  { fg = 'NONE', bg = c.alt } },

    -- Message
    { "MsgArea",      { fg = c.info, bg = c.bg } },
    { "MsgSeparator", { fg = c.info, bg = c.bg } },

    { "ModeMsg",      { fg = c.info, bg = c.alt, bold = true } },
    { "ErrorMsg",     { fg = c.err, bg = c.bg, bold = true } },
    { "WarningMsg",   { fg = c.warn, bg = c.bg, bold = true } },

    -- Sign
    { "SignColumn",   { fg = c.preproc, bg = c.bg } },

    -- Spell
    { "SpellBad",     { fg = "NONE", bg = "NONE", sp = c.err, undercurl = true } },
    { "SpellCap",     { fg = "NONE", bg = "NONE", sp = c.err, undercurl = true } },
    { "SpellLocal",   { fg = "NONE", bg = "NONE", sp = c.err, underline = true } },
    { "SpellRare",    { fg = "NONE", bg = "NONE", sp = c.err, underline = true } },

    -- Pmenu
    { "Pmenu",        { fg = c.info,bg = c.alt } },
    { "PmenuSel",     { fg = c.bg, bg = c.preproc } },
    { "PmenuSbar",    { fg = "NONE", bg = c.alt } },
    { "PmenuThumb",   { fg = "NONE", bg = c.hint } },

    -- Folded
    { "Folded",       { fg = c.hint, bg = c.alt } },
    { "FoldColumn",   { fg = c.hint, bg = c.alt } },

    -- Cursor
    { "CursorLine",   { fg = "NONE", bg = c.alt } },
    { "ColorColumn",  { fg = "NONE", bg = c.alt } },
    { "CursorColumn", { fg = "NONE", bg = c.alt } },
    { "CursorLineNr", { fg = c.fg, bg = "NONE", bold = true } },
    { "Cursor",       { fg = c.preproc, bg = c.preproc } },
    { "lCursor",      { fg = c.preproc, bg = c.preproc } },
    { "CursorIM",     { fg = c.preproc, bg = c.preproc } },
    { "TermCursor",   { fg = c.preproc, bg = c.preproc } },
    { "TermCursorNC", { fg = c.preproc, bg = c.preproc } },

    -- Visual
    { "Visual",       { fg = c.bg, bg = c.preproc } },
    { "VisualNOS",    { fg = "NONE", bg = c.alt } },

    -- Diff
    { "DiffText",     { fg = c.alt, bg = c.preproc } },
    { "DiffAdd",      { fg = c.alt, bg = c.preproc } },
    { "DiffDelete",   { fg = c.alt, bg = c.preproc } },
    { "DiffChange",   { fg = c.alt, bg = c.preproc, underline = true } },

    -- Match
    { "MatchWord",    { fg = "NONE", bg = "NONE", underline = true } },
    { "MatchParen",   { fg = c.info, bg = "NONE", underline = true } },
    { "MatchWordCur", { fg = "NONE", bg = "NONE", underline = true } },
    { "MatchParenCur",{ fg = "NONE", bg = "NONE", underline = true } },

    -- Miscellaneous 
    { "LineNr",       { fg = c.hint, bg = "NONE" } },
    { "Conceal",      { fg = c.hint, bg = "NONE" } },
    { "WildMenu",     { fg = c.info, bg = c.preproc } },
    { "Directory",    { fg = c.info, bg = "NONE" } },
    { "VertSplit",    { fg = c.alt, bg = c.bg } },
    { "QkFixLine",    { fg = "NONE", bg = c.preproc } },
    { "FloatBoder",   { fg = c.hint, bg = c.alt } },
    { "Whitespace",   { fg = c.bg, bg = "NONE" } },
    { "SpecialKey",   { fg = c.preproc, bg = "NONE", bold = true } },

  --------------------------------------------------------
  ----- search and change --------------------------------
  --------------------------------------------------------

    -- Search
    { "Search",       { fg = c.bg, bg = c.preproc } },
    { "IncSearch",    { fg = c.bg, bg = c.hint } },
    { "Substitute",   { fg = c.bg, bg = c.hint } },

    -- Tabline
    { "TabLine",      { fg = c.fg, bg = c.bg } },
    { "TabLineSel",   { fg = c.info, bg = c.bg } },
    { "TabLineFill",  { fg = c.bg, bg = c.bg } },

    -- Miscellaneous 
    { "NonText",      { fg = c.bg, bg = "NONE" } },
    { "MoreMsg",      { fg = c.hint, bg = "NONE" } },
    { "Question",     { fg = c.hint, bg = "NONE" } },
    { "EndOfBuffer",  { fg = c.bg, bg = "NONE" } },

  --------------------------------------------------------
  ----- Code ---------------------------------------------
  --------------------------------------------------------

    { "Label",        { fg = c.type, bg = "NONE", italic = true, bold = false } },
    { "Special",      { fg = c.fg, bg = "NONE", italic = false, bold = false } },
    { "Function",     { fg = c.fun, bg = "NONE", italic = true, bold = false } },
    { "Keyword",      { fg = c.key, bg = "NONE", italic = false, bold = false } },
    { "String",       { fg = c.str, bg = "NONE", italic = true, bold = false } },
    { "Include",      { fg = c.preproc, bg = "NONE", italic = true, bold = true } },
    { "PreProc",      { fg = c.preproc, bg = "NONE", italic = true, bold = true } },
    { "Type",         { fg = c.type,  bg = "NONE", italic = false, bold = true } },
    { "Boolean",      { fg = c.boolean, bg = "NONE", italic = true, bold = true } },
    { "Operator",     { fg = c.conditional, bg = "NONE", italic = false, bold = true } },
    { "Conditional",  { fg = c.conditional, bg = "NONE", italic = false, bold = true } },
    { "Repeat",       { fg = c.conditional, bg = "NONE", italic = false, bold = true } },
    { "Delimiter",    { fg = c.fg, bg = "NONE", italic = false, bold = false } },
    { "Float",        { fg = c.num, bg = "NONE", italic = true, bold = false } },
    { "Number",       { fg = c.num, bg = "NONE", italic = true, bold = false } },
    { "Variable",     { fg = c.num, bg = "NONE", italic = true, bold = false } },
    { "Exception",    { fg = c.type, bg = "NONE", italic = true, bold = false } },
    { "Identifier",   { fg = c.var, bg = "NONE", italic = false, bold = false } },
    { "Constant",     { fg = c.const, bg = "NONE", italic = false, bold = false } },
    { "Comment",      { fg = c.comment, bg = "NONE", italic = false, bold = false } },

  --------------------------------------------------------
  ----- Treesitter ---------------------------------------
  --------------------------------------------------------

    { "TSComment",  { link = 'Comment' } },
    { "TSVariable", { link = 'Variable' } },
    { "TSString", { link = 'String' } },
    { "TSStringRegex", { link = 'String' } },
    { "TSStringEscape", { link = 'String' } },
    { "TSCharacter", { link = 'String' } },
    { "TSCharacterSpecial", { link = 'SpecialChar' } },
    { "TSNumber", { link = 'Number' } },
    { "TSFloat", { link = 'Float' } },
    { "TSBoolean", { link = 'Boolean' } },
    { "TSConstant", { link = 'Constant' } },
    { "TSConstBtin", { link = 'Constant' } },
    { "TSConstructor", { link = 'Type' } },
    { "TSType", { link = 'Type' } },
    { "TSInclude", { link = 'Include' } },
    { "TSException", { link = 'Exception' } },
    { "TSKeyword", { link = 'Keyword' } },
    { "TSKeywordReturn", { link = 'Keyword' } },
    { "TSKeywordOperator", { link = 'Keyword' } },
    { "TSKeywordFunction", { link = 'Keyword' } },
    { "TSFunction", { link = 'Function' } },
    { "TSFuncBtin", { link = 'Function' } },
    { "TSMethod", { link = 'Function' } },
    { "TSFuncMacro", { link = 'Function' } },
    { "TSConditional", { link = 'Conditional' } },
    { "TSRepeat", { link = 'Repeat' } },
    { "TSOperator", { link = 'Operator' } },
    { "TSPreProc", { link = 'PreProc' } },
    { "TSStorageClass", { link = 'StorageClass' } },
    { "TSStructure", { link = 'Structure' } },
    { "TSTypeDefinition", { link = 'Typedef' } },
    { "TSDefine", { link = 'Define' } },
    { "TSNote", { link = 'Comment' } },
    { "TSTodo", { link = 'Todo' } },
    { "TSDebug", { link = 'Debug' } },
    { "TSDanger", { link = 'Error' } },
    { "TSTitle", { link = 'Title' } },
    { "TSLabel", { link = 'Label' } },
    { "TSPunctDelimiter", { link = 'Delimiter' } },
    { "TSTagDelimiter", { link = 'Delimiter' } },
    { "TSPunctBracket", { link = 'Delimiter' } },
    { "TSPunctSpecial", { link = 'Delimiter' } },
    { "TSTag", { link = 'Tag' } },
    { "TSStrong", { link = 'Bold' } },
    { "TSEmphasis", { link = 'Italic' } },
    { "TSUnderline", { link = 'Underline' } },
    { "TSStrike", { fg = "NONE", bg = "NONE", strikethrough = true } },
    { "TSStringSpecial", { fg = c.info, bg = "NONE" } },
    { "TSEnvironmentName", { fg = c.preproc, bg = "NONE" } },
    { "TSVariableBtin", { fg = c.err, bg = "NONE" } },
    { "TSConstMacro", { fg = c.hint, bg = "NONE" } },
    { "TSTypeBtin", { fg = c.hint, bg = "NONE" } },
    { "TSAnnotation", { fg = c.preproc, bg = "NONE" } },
    { "TSNamespace", { fg = c.preproc, bg = "NONE" } },
    { "TSSymbol", { fg = c.info, bg = "NONE" } },
    { "TSField", { fg = c.info, bg = "NONE" } },
    { "TSProperty", { fg = c.err, bg = "NONE" } },
    { "TSParameter", { fg = c.err, bg = "NONE" } },
    { "TSParameterReference", { fg = c.err, bg = "NONE" } },
    { "TSAttribute", { fg = c.err, bg = "NONE" } },
    { "TSText", { fg = c.info, bg = "NONE" } },
    { "TSTagAttribute", { fg = c.hint, bg = "NONE", italic = true } },
    { "TSError", { fg = c.err, bg = "NONE" } },
    { "TSWarning", { fg = c.err, bg = "NONE" } },
    { "TSQueryLinterError", { fg = c.err, bg = "NONE" } },
    { "TSURI", { fg = c.preproc, bg = "NONE", underline = true } },
    { "TSMath", { fg = c.num, bg = "NONE" } },
    { "TSLiteral", { fg = c.num, bg = "NONE" } },


    -- markdown
    { "markdownBlockquote", { fg = c.hint, bg = "NONE" } },
    { "markdownCode", { fg = c.hint, bg = "NONE" } },
    { "markdownCodeBlock", { fg = c.hint, bg = "NONE" } },
    { "markdownCodeDelimiter", { fg = c.hint, bg = "NONE" } },
    { "markdownH1", { link = 'Title' } },
    { "markdownH2", { link = 'Title' } },
    { "markdownH3", { link = 'Title' } },
    { "markdownH4", { link = 'Title' } },
    { "markdownH5", { link = 'Title' } },
    { "markdownH6", { link = 'Title' } },
    { "markdownHeadingDelimiter", { fg = c.preproc, bg = "NONE" } },
    { "markdownHeadingRule", { fg = c.info, bg = "NONE", bold = true } },
    { "markdownId", { link = 'Identifier' } },
    { "markdownIdDeclaration", { fg = c.preproc, bg = "NONE" } },
    { "markdownIdDelimiter", { fg = c.fg, bg = "NONE" } },
    { "markdownLinkDelimiter", { fg = c.fg, bg = "NONE" } },
    { "markdownBold", { fg = c.preproc, bg = "NONE", bold = true } },
    { "markdownItalic", { link = 'Italic' } },
    { "markdownBoldItalic", { fg = c.hint, bg = "NONE", bold = true, italic = true, } },
    { "markdownListMarker", { fg = c.preproc, bg = "NONE" } },
    { "markdownOrderedListMarker", { fg = c.preproc, bg = "NONE" } },
    { "markdownRule", { fg = c.hint, bg = "NONE" } },
    { "markdownUrl", { fg = c.preproc, bg = "NONE", underdotted = true } },
    { "markdownLinkText", { fg = c.preproc, bg = "NONE" } },
    { "markdownFootnote", { fg = c.hint, bg = "NONE" } },
    { "markdownFootnoteDefinition", { fg = c.hint, bg = "NONE" } },
    { "markdownEscape", { fg = c.hint, bg = "NONE" } },

    -- Git
    { "SignAdd", { fg = c.preproc, bg = "NONE" } },
    { "SignChange", { fg = c.preproc, bg = "NONE" } },
    { "SignDelete", { fg = c.preproc, bg = "NONE" } },
    { "GitSignsAdd", { fg = c.preproc, bg = "NONE" } },
    { "GitSignsChange", { fg = c.preproc, bg = "NONE" } },
    { "GitSignsDelete", { fg = c.preproc, bg = "NONE" } },

    -- LSP
    { "DiagnosticHint", { fg = c.hint, bg = c.bg } },
    { "DiagnosticInfo", { fg = c.info, bg = c.bg } },
    { "DiagnosticWarn", { fg = c.warn, bg = c.bg } },
    { "DiagnosticError", { fg = c.err, bg = "NONE" } },
    { "DiagnosticOther", { fg = c.preproc, bg = "NONE" } },
    { "DiagnosticSignHint", { link = 'DiagnosticHint' } },
    { "DiagnosticSignInfo", { link = 'DiagnosticInfo' } },
    { "DiagnosticSignWarn", { link = 'DiagnosticWarn' } },
    { "DiagnosticSignError", { link = 'DiagnosticError' } },
    { "DiagnosticSignOther", { link = 'DiagnosticOther' } },
    { "DiagnosticSignWarning", { link = 'DiagnosticWarn' } },
    { "DiagnosticFloatingHint", { link = 'DiagnosticHint' } },
    { "DiagnosticFloatingInfo", { link = 'DiagnosticInfo' } },
    { "DiagnosticFloatingWarn", { link = 'DiagnosticWarn' } },
    { "DiagnosticFloatingError", { link = 'DiagnosticError' } },
    { "DiagnosticUnderlineHint", { fg = "NONE", bg = "NONE", sp = c.var, undercurl = true } },
    { "DiagnosticUnderlineInfo", { fg = "NONE", bg = "NONE", sp = c.info, undercurl = true } },
    { "DiagnosticUnderlineWarn", { fg = "NONE", bg = "NONE", sp = c.err, undercurl = true } },
    { "DiagnosticUnderlineError", { fg = "NONE", bg = "NONE", sp = c.err, undercurl = true } },
    { "DiagnosticSignInformation", { link = 'DiagnosticInfo' } },
    { "DiagnosticVirtualTextHint", { fg = c.var, bg = c.var_bg } },
    { "DiagnosticVirtualTextInfo", { fg = c.info, bg = c.info_bg } },
    { "DiagnosticVirtualTextWarn", { fg = c.err, bg = c.err_bg } },
    { "DiagnosticVirtualTextError", { fg = c.err, bg = c.err_bg } },
    { "LspDiagnosticsError", { fg = c.err, bg = "NONE" } },
    { "LspDiagnosticsWarning", { fg = c.err, bg = "NONE" } },
    { "LspDiagnosticsInfo", { fg = c.info, bg = "NONE" } },
    { "LspDiagnosticsInformation", { link = 'LspDiagnosticsInfo' } },
    { "LspDiagnosticsHint", { fg = c.var, bg = "NONE" } },
    { "LspDiagnosticsDefaultError", { link = 'LspDiagnosticsError' } },
    { "LspDiagnosticsDefaultWarning", { link = 'LspDiagnosticsWarning' } },
    { "LspDiagnosticsDefaultInformation", { link = 'LspDiagnosticsInfo' } },
    { "LspDiagnosticsDefaultInfo", { link = 'LspDiagnosticsInfo' } },
    { "LspDiagnosticsDefaultHint", { link = 'LspDiagnosticsHint' } },
    { "LspDiagnosticsVirtualTextError", { link = 'DiagnosticVirtualTextError' } },
    { "LspDiagnosticsVirtualTextWarning", { link = 'DiagnosticVirtualTextWarn' } },
    { "LspDiagnosticsVirtualTextInformation", { link = 'DiagnosticVirtualTextInfo' } },
    { "LspDiagnosticsVirtualTextInfo", { link = 'DiagnosticVirtualTextInfo' } },
    { "LspDiagnosticsVirtualTextHint", { link = 'DiagnosticVirtualTextHint' } },
    { "LspDiagnosticsFloatingError", { link = 'LspDiagnosticsError' } },
    { "LspDiagnosticsFloatingWarning", { link = 'LspDiagnosticsWarning' } },
    { "LspDiagnosticsFloatingInformation", { link = 'LspDiagnosticsInfo' } },
    { "LspDiagnosticsFloatingInfo", { link = 'LspDiagnosticsInfo' } },
    { "LspDiagnosticsFloatingHint", { link = 'LspDiagnosticsHint' } },
    { "LspDiagnosticsSignError", { link = 'LspDiagnosticsError' } },
    { "LspDiagnosticsSignWarning", { link = 'LspDiagnosticsWarning' } },
    { "LspDiagnosticsSignInformation", { link = 'LspDiagnosticsInfo' } },
    { "LspDiagnosticsSignInfo", { link = 'LspDiagnosticsInfo' } },
    { "LspDiagnosticsSignHint", { link = 'LspDiagnosticsHint' } },
    { "NvimTreeLspDiagnosticsError", { link = 'LspDiagnosticsError' } },
    { "NvimTreeLspDiagnosticsWarning", { link = 'LspDiagnosticsWarning' } },
    { "NvimTreeLspDiagnosticsInformation", { link = 'LspDiagnosticsInfo' } },
    { "NvimTreeLspDiagnosticsInfo", { link = 'LspDiagnosticsInfo' } },
    { "NvimTreeLspDiagnosticsHint", { link = 'LspDiagnosticsHint' } },
    { "LspDiagnosticsUnderlineError", { link = 'DiagnosticUnderlineError' } },
    { "LspDiagnosticsUnderlineWarning", { link = 'DiagnosticUnderlineWarn' } },
    { "LspDiagnosticsUnderlineInformation", { link = 'DiagnosticUnderlineInfo' } },
    { "LspDiagnosticsUnderlineInfo", { link = 'DiagnosticUnderlineInfo' } },
    { "LspDiagnosticsUnderlineHint", { link = 'DiagnosticUnderlineHint' } },
    { "LspReferenceRead", { fg = "NONE", bg = c.alt } },
    { "LspReferenceText", { fg = "NONE", bg = c.alt } },
    { "LspReferenceWrite", { fg = "NONE", bg = c.alt } },
    { "LspCodeLens", { fg = c.fg, bg = "NONE", italic = true } },
    { "LspCodeLensSeparator", { fg = c.fg, bg = "NONE", italic = true } },

    -- Qkscope
    { "QkScopePrimary", { fg = '#ff007c', bg = "NONE", underline = true } },
    { "QkScopeSecondary", { fg = '#00dfff', bg = "NONE", underline = true } },

    -- Telescope
    { "TelescopeSelection", { fg = c.preproc, bg = c.alt } },
    { "TelescopeSelectionCaret", { fg = c.preproc, bg = c.alt } },
    { "TelescopeMatching", { fg = c.preproc, bg = "NONE", bold = true, italic = true, } },
    { "TelescopeBorder", { fg = c.info, bg = "NONE" } },
    { "TelescopeNormal", { fg = c.preproc, bg = c.bg } },
    { "TelescopePromptTitle", { fg = c.info, bg = "NONE" } },
    { "TelescopePromptPrefix", { fg = c.var, bg = "NONE" } },
    { "TelescopeResultsTitle", { fg = c.info, bg = "NONE" } },
    { "TelescopePreviewTitle", { fg = c.info, bg = "NONE" } },
    { "TelescopePromptCounter", { fg = c.var, bg = "NONE" } },
    { "TelescopePreviewHyphen", { fg = c.var, bg = "NONE" } },

    -- NvimTree
    { "NvimTreeFolderIcon", { fg = c.fg, bg = c.bg } },
    { "NvimTreeIndentMarker", { fg = c.fg, bg = "NONE" } },
    { "NvimTreeNormal", { fg = c.preproc, bg = c.bg } },
    { "NvimTreeVertSplit", { fg = c.alt, bg = c.alt } },
    { "NvimTreeFolderName", { link = 'Directory' } },
    { "NvimTreeOpenedFolderName", { fg = c.folder_blue, bg = "NONE", bold = true, italic = true, } },
    { "NvimTreeEmptyFolderName", { fg = c.info, bg = "NONE", italic = true } },
    { "NvimTreeGitIgnored", { fg = c.info, bg = "NONE", italic = true } },
    { "NvimTreeImageFile", { fg = c.fg, bg = "NONE" } },
    { "NvimTreeSpecialFile", { fg = c.hint, bg = "NONE" } },
    { "NvimTreeEndOfBuffer", { fg = c.bg, bg = "NONE" } },
    { "NvimTreeCursorLine", { fg = "NONE", bg = c.alt } },
    { "NvimTreeGitStaged", { fg = c.preproc, bg = "NONE" } },
    { "NvimTreeGitNew", { fg = c.preproc, bg = "NONE" } },
    { "NvimTreeGitRenamed", { fg = c.preproc, bg = "NONE" } },
    { "NvimTreeGitDeleted", { fg = c.preproc, bg = "NONE" } },
    { "NvimTreeGitMerge", { fg = c.preproc, bg = "NONE" } },
    { "NvimTreeGitDirty", { fg = c.preproc, bg = "NONE" } },
    { "NvimTreeSymlink", { fg = c.preproc, bg = "NONE" } },
    { "NvimTreeRootFolder", { fg = c.info, bg = "NONE", bold = true } },
    { "NvimTreeExecFile", { fg = '#9FBA89', bg = "NONE" } },

    -- Lir
    { "LirFloatNormal", { fg = c.info, bg = c.alt } },
    { "LirDir", { link = 'Directory' } },
    { "LirSymLink", { fg = c.preproc, bg = "NONE" } },
    { "LirEmptyDirText", { fg = c.hint, bg = "NONE", italic = true } },

    -- Buffer
   -- { "BufferCurrent", { fg = c.err, bg = c.bg } },
   -- { "BufferCurrentIndex", { fg = c.info, bg = c.bg } },
   -- { "BufferCurrentMod", { fg = c.info, bg = c.bg } },
   -- { "BufferCurrentSign", { fg = c.var, bg = c.bg } },
   -- { "BufferCurrentTarget", { fg = c.err, bg = c.bg, bold = true } },
   -- { "BufferVisible", { fg = c.info, bg = c.bg } },
   -- { "BufferVisibleIndex", { fg = c.info, bg = c.bg } },
   -- { "BufferVisibleMod", { fg = c.info, bg = c.bg } },
   -- { "BufferVisibleSign", { fg = c.hint, bg = c.bg } },
   -- { "BufferVisibleTarget", { fg = c.err, bg = c.bg, bold = true } },
   -- { "BufferInactive", { fg = c.hint, bg = c.alt } },
   -- { "BufferInactiveIndex", { fg = c.hint, bg = c.alt } },
   -- { "BufferInactiveMod", { fg = c.info, bg = c.alt } },
   -- { "BufferInactiveSign", { fg = c.hint, bg = c.alt } },
   -- { "BufferInactiveTarget", { fg = c.err, bg = c.alt, bold = true } },

    -- Bufferline

    { "BufferLineHint",                     { fg = c.preproc, bg = c.bg } },
    { "BufferLineHintVisible",              { fg = c.preproc, bg = c.bg } },
    { "BufferLineHintSelected",             { fg = c.preproc, bg = c.bg } },
    { "BufferLineHintDiagnostic",           { fg = c.preproc, bg = c.bg } },
    { "BufferLineHintDiagnosticSelected",   { fg = c.preproc, bg = c.bg } },
    { "BufferLineHintDiagnosticVisible",    { fg = c.preproc, bg = c.bg } },

    { "BufferLineDiagnostic",               { fg = c.fg, bg = c.bg } },
    { "BufferLineDiagnosticSelected",       { fg = c.fg, bg = c.bg } },
    { "BufferLineDiagnosticVisible",        { fg = c.fg, bg = c.bg } },

    { "BufferLineNumbers",                  { fg = c.bg, bg = c.preproc } },
    { "BufferLineNumbersSelected",          { fg = c.bg, bg = c.preproc } },
    { "BufferLineNumbersVisible",           { fg = c.bg, bg = c.preproc } },

    { "BufferLineBuffer",                   { fg = c.fg, bg = c.bg, bold = true, italic = true } },
    { "BufferLineBufferSelected",           { fg = c.fg, bg = c.bg, bold = true } },
    { "BufferLineBufferVisible",            { fg = c.fg, bg = c.bg, bold = true } },

    { "BufferLineCloseButton",              { fg = c.fg, bg = c.bg } },
    { "BufferLineCloseButtonVisible",       { fg = c.fg, bg = c.bg } },
    { "BufferLineCloseButtonSelected",      { fg = c.fg, bg = c.bg } },

    { "BufferLineTab",                      { fg = c.preproc, bg = c.bg } },
    { "BufferLineTabClose",                 { fg = c.preproc, bg = c.bg } },
    { "BufferLineTabSelected",              { fg = c.preproc, bg = c.bg } },

    { "BufferLineTabSeparator",             { fg = c.bg, bg = c.alt } },
    { "BufferLineTabSeparatorSelected",     { fg = c.bg, bg = c.alt } },

    { "BufferLineGroupLabel",               { fg = c.preproc, bg = c.bg } },
    { "BufferLineGroupSeparator",           { fg = c.preproc, bg = c.bg } },

    { "BufferLineFill",                     { fg = c.preproc, bg = c.alt } },

    { "BufferLineTruncMaker",               { fg = c.preproc, bg = c.bg } },

    { "BufferLineSeparator",                { fg = c.bg, bg = c.alt } },
    { "BufferLineBackground",               { fg = c.preproc, bg = c.bg } },
    { "BufferLineOffsetSeparator",          { fg = c.preproc, bg = c.bg } },

    { "BufferLinePickVisible",              { fg = c.bg, bg = c.preproc } },
    { "BufferLinePickSelected",             { fg = c.bg, bg = c.preproc } },

    { "BufferLineIndicatorVisible",         { fg = c.bg, bg = c.bg } },
    { "BufferLineIndicatorSelected",        { fg = c.bg, bg = c.bg } },

    { "BufferLineDuplicate",                { fg = c.bg, bg = c.bg } },
    { "BufferLineDuplicateVisible",         { fg = c.bg, bg = c.bg } },
    { "BufferLineDuplicateSelected",        { fg = c.bg, bg = c.bg } },

    { "BufferLineModified",                 { fg = c.fg, bg = c.bg } },
    { "BufferLineModifiedSelected",         { fg = c.fg, bg = c.bg } },
    { "BufferLineModifiedVisible",          { fg = c.fg, bg = c.bg } },

    { "BufferLineError",                    { fg = c.err, bg = c.bg, bold = true, italic = true } },
    { "BufferLineErrorVisible",             { fg = c.err, bg = c.bg, bold = true, italic = true } },
    { "BufferLineErrorSelected",            { fg = c.err, bg = c.bg, bold = true, italic = true } },
    { "BufferLineErrorDiagnostic",          { fg = c.err, bg = c.bg, bold = true, italic = true } },

    { "BufferLineWarning",                  { fg = c.warn, bg = c.bg, bold = true, italic = true } },
    { "BufferLineWarningVisible",           { fg = c.warn, bg = c.bg, bold = true, italic = true } },
    { "BufferLineWarningSelected",          { fg = c.warn, bg = c.bg, bold = true, italic = true } },
    { "BufferLineWarningDiagnostic",        { fg = c.warn, bg = c.bg, bold = true, italic = true } },

    { "BufferLineInfo",                     { fg = c.preproc, bg = c.bg, bold = true } },
    { "BufferLineInfoVisible",              { fg = c.preproc, bg = c.bg } },
    { "BufferLineInfoSelected",             { fg = c.preproc, bg = c.bg } },
    { "BufferLineInfoDiagnostic",           { fg = c.preproc, bg = c.bg } },
    { "BufferLineInfoDiagnosticVisible",    { fg = c.bg, bg = c.preproc } },
    { "BufferLineInfoDiagnosticSelected",   { fg = c.bg, bg = c.preproc } },

    -- StatusLine
    { "StatusLine", { fg = c.fg, bg = c.bg } },
    { "StatusLineNC", { fg = "NONE", bg = "NONE" } },
    { "StatusLineSeparator", { fg = c.bg, bg = "NONE" } },
    { "StatusLineTerm", { fg = c.bg, bg = "NONE" } },
    { "StatusLineTermNC", { fg = c.bg, bg = "NONE" } },

    -- IndentBlankline
    { "IndentBlanklineContextChar", { fg = c.info, bg = "NONE" } },
    { "IndentBlanklineContextStart", { fg = "NONE", bg = "NONE", underline = true } },
    { "IndentBlanklineChar", { fg = c.alt, bg = "NONE" } },

    -- Dashboard
    { "DashboardHeader", { fg = c.preproc, bg = "NONE" } },
    { "DashboardCenter", { fg = c.preproc, bg = "NONE" } },
    { "DashboardFooter", { fg = c.preproc, bg = "NONE" } },

    -- DiffView
    { "DiffViewNormal", { fg = c.hint, bg = c.alt } },
    { "DiffviewStatusAdded", { fg = c.preproc, bg = "NONE" } },
    { "DiffviewStatusModified", { fg = c.preproc, bg = "NONE" } },
    { "DiffviewStatusRenamed", { fg = c.preproc, bg = "NONE" } },
    { "DiffviewStatusDeleted", { fg = c.preproc, bg = "NONE" } },
    { "DiffviewFilePanelInsertion", { fg = c.preproc, bg = "NONE" } },
    { "DiffviewFilePanelDeletion", { fg = c.preproc, bg = "NONE" } },
    { "DiffviewVertSplit", { fg = "NONE", bg = c.bg } },

    -- Bookmarks
    { "BookmarkSign", { fg = c.preproc, bg = "NONE" } },
    { "BookmarkAnnotationSign", { fg = c.hint, bg = "NONE" } },
    { "BookmarkLine", { fg = c.preproc, bg = "NONE" } },
    { "BookmarkAnnotationLine", { fg = c.preproc, bg = "NONE" } },

    -- Bqf
    { "BqfPreviewBorder", { fg = c.info, bg = "NONE" } },
    { "BqfPreviewRange", { fg = "NONE", bg = c.preproc } },

    -- Cmp
    { "CmpItemAbbrDeprecated", { fg = c.hint, bg = "NONE", strikethrough = true } },
    { "CmpItemAbbrMatch", { fg = c.preproc, bg = "NONE" } },
    { "CmpItemAbbrMatchFuzzy", { fg = c.preproc, bg = "NONE" } },
    { "CmpItemKindFunction", { fg = c.preproc, bg = "NONE" } },
    { "CmpItemKindMethod", { fg = c.preproc, bg = "NONE" } },
    { "CmpItemKindConstructor", { fg = c.preproc, bg = "NONE" } },
    { "CmpItemKindClass", { fg = c.preproc, bg = "NONE" } },
    { "CmpItemKindEnum", { fg = c.preproc, bg = "NONE" } },
    { "CmpItemKindEvent", { fg = c.hint, bg = "NONE" } },
    { "CmpItemKindInterface", { fg = c.preproc, bg = "NONE" } },
    { "CmpItemKindStruct", { fg = c.preproc, bg = "NONE" } },
    { "CmpItemKindVariable", { fg = c.err, bg = "NONE" } },
    { "CmpItemKindField", { fg = c.err, bg = "NONE" } },
    { "CmpItemKindProperty", { fg = c.err, bg = "NONE" } },
    { "CmpItemKindEnumMember", { fg = c.hint, bg = "NONE" } },
    { "CmpItemKindConstant", { fg = c.hint, bg = "NONE" } },
    { "CmpItemKindKeyword", { fg = c.preproc, bg = "NONE" } },
    { "CmpItemKindModule", { fg = c.preproc, bg = "NONE" } },
    { "CmpItemKindValue", { fg = c.info, bg = "NONE" } },
    { "CmpItemKindUnit", { fg = c.info, bg = "NONE" } },
    { "CmpItemKindText", { fg = c.info, bg = "NONE" } },
    { "CmpItemKindSnippet", { fg = c.hint, bg = "NONE" } },
    { "CmpItemKindFile", { fg = c.info, bg = "NONE" } },
    { "CmpItemKindFolder", { fg = c.info, bg = "NONE" } },
    { "CmpItemKindColor", { fg = c.info, bg = "NONE" } },
    { "CmpItemKindReference", { fg = c.info, bg = "NONE" } },
    { "CmpItemKindOperator", { fg = c.info, bg = "NONE" } },
    { "CmpItemKindTypeParameter", { fg = c.err, bg = "NONE" } },

    -- Packer
    { "packerString", { fg = c.preproc, bg = "NONE" } },
    { "packerHash", { fg = c.preproc, bg = "NONE" } },
    { "packerOutput", { fg = c.preproc, bg = "NONE" } },
    { "packerRelDate", { fg = c.fg, bg = "NONE" } },
    { "packerSuccess", { fg = c.fg, bg = "NONE" } },
    { "packerStatusSuccess", { fg = c.fg, bg = "NONE" } },

    -- SymbolOutline
    { "SymbolsOutlineConnector", { fg = c.hint, bg = "NONE" } },
    { "FocusedSymbol", { fg = "NONE", bg = c.bg } },

    -- Notify
    { "NotifyERRORBorder", { fg = '#8A1F1F', bg = "NONE" } },
    { "NotifyWARNBorder", { fg = '#79491D', bg = "NONE" } },
    { "NotifyINFOBorder", { fg = c.preproc, bg = "NONE" } },
    { "NotifyDEBUGBorder", { fg = c.hint, bg = "NONE" } },
    { "NotifyTRACEBorder", { fg = '#4F3552', bg = "NONE" } },
    { "NotifyERRORIcon", { fg = c.err, bg = "NONE" } },
    { "NotifyWARNIcon", { fg = c.err, bg = "NONE" } },
    { "NotifyINFOIcon", { fg = c.preproc, bg = "NONE" } },
    { "NotifyDEBUGIcon", { fg = c.hint, bg = "NONE" } },
    { "NotifyTRACEIcon", { fg = c.preproc, bg = "NONE" } },
    { "NotifyERRORTitle", { fg = c.err, bg = "NONE" } },
    { "NotifyWARNTitle", { fg = c.err, bg = "NONE" } },
    { "NotifyINFOTitle", { fg = c.preproc, bg = "NONE" } },
    { "NotifyDEBUGTitle", { fg = c.hint, bg = "NONE" } },
    { "NotifyTRACETitle", { fg = c.preproc, bg = "NONE" } },

    -- TreesitterContext
    { "TreesitterContext", { fg = "NONE", bg = c.alt } },

    -- Hop
    { "HopNextKey", { fg = '#4ae0ff', bg = "NONE" } },
    { "HopNextKey1", { fg = '#d44eed', bg = "NONE" } },
    { "HopNextKey2", { fg = '#b42ecd', bg = "NONE" } },
    { "HopUnmatched", { fg = c.hint, bg = "NONE" } },
    { "HopPreview", { fg = '#c7ba7d', bg = "NONE" } },

    -- Crates
    { "CratesNvimLoading", { fg = c.var, bg = "NONE" } },
    { "CratesNvimVersion", { fg = c.var, bg = "NONE" } },

    -- Misc
    { "diffAdded", { fg = c.preproc, bg = "NONE" } },
    { "diffRemoved", { fg = c.preproc, bg = "NONE" } },
    { "diffFileId", { fg = c.preproc, bg = "NONE", bold = true, reverse = true, } },
    { "diffFile", { fg = c.alt, bg = "NONE" } },
    { "diffNewFile", { fg = c.preproc, bg = "NONE" } },
    { "diffOldFile", { fg = c.err, bg = "NONE" } },
    { "debugPc", { fg = "NONE", bg = c.preproc } },
    { "debugBreakpoint", { fg = c.err, bg = "NONE", reverse = true } },
    { "CodiVirtualText", { fg = c.var, bg = "NONE" } },
    { "SniprunVirtualTextOk", { fg = c.var, bg = "NONE" } },
    { "SniprunFloatingWinOk", { fg = c.var, bg = "NONE" } },
    { "SniprunVirtualTextErr", { fg = c.err, bg = "NONE" } },
    { "SniprunFloatingWinErr", { fg = c.err, bg = "NONE" } },
    { "DapBreakpoint", { fg = c.err, bg = "NONE" } },

    -- Language
    { "xmlTag", { fg = c.preproc, bg = "NONE" } },
    { "xmlTagName", { fg = c.preproc, bg = "NONE" } },
    { "xmlEndTag", { fg = c.preproc, bg = "NONE" } },
    { "yamlPlainScalar", { fg = c.hint, bg = "NONE" } },
    { "yamlTSField", { fg = c.preproc, bg = "NONE" } },
    { "luaFunc", { fg = c.hint, bg = "NONE" } },
    { "luaFunction", { fg = c.preproc, bg = "NONE" } },
    { "hclTSPunctSpecial", { fg = c.info, bg = "NONE" } },
    { "htmlH1", { fg = c.info, bg = "NONE" } },
    { "htmlH2", { fg = c.info, bg = "NONE" } },
    { "htmlH3", { fg = c.info, bg = "NONE" } },
    { "htmlH4", { fg = c.info, bg = "NONE" } },
    { "htmlH5", { fg = c.info, bg = "NONE" } },
    { "htmlH6", { fg = c.info, bg = "NONE" } },
    { "htmlHead", { fg = c.info, bg = "NONE" } },
    { "htmlTitle", { fg = c.info, bg = "NONE" } },
    { "htmlArg", { fg = c.info, bg = "NONE" } },
    { "htmlTag", { fg = c.preproc, bg = "NONE" } },
    { "htmlTagN", { fg = c.preproc, bg = "NONE" } },
    { "htmlTagName", { fg = c.preproc, bg = "NONE" } },
    { "htmlComment", { fg = c.preproc, bg = "NONE" } },
    { "htmlLink", { fg = c.hint, bg = "NONE", underline = true } },
    { "cssBraces", { fg = c.info, bg = "NONE" } },
    { "cssInclude", { fg = c.preproc, bg = "NONE" } },
    { "cssTagName", { fg = c.hint, bg = "NONE" } },
    { "cssClassName", { fg = c.hint, bg = "NONE" } },
    { "cssPseudoClass", { fg = c.hint, bg = "NONE" } },
    { "cssPseudoClassId", { fg = c.hint, bg = "NONE" } },
    { "cssPseudoClassLang", { fg = c.hint, bg = "NONE" } },
    { "cssIdentifier", { fg = c.hint, bg = "NONE" } },
    { "cssProp", { fg = c.info, bg = "NONE" } },
    { "cssDefinition", { fg = c.info, bg = "NONE" } },
    { "cssAttr", { fg = c.hint, bg = "NONE" } },
    { "cssAttrRegion", { fg = c.hint, bg = "NONE" } },
    { "cssColor", { fg = c.hint, bg = "NONE" } },
    { "cssFunction", { fg = c.preproc, bg = "NONE" } },
    { "cssFunctionName", { fg = c.hint, bg = "NONE" } },
    { "cssVendor", { fg = c.hint, bg = "NONE" } },
    { "cssValueNumber", { fg = c.hint, bg = "NONE" } },
    { "cssValueLength", { fg = c.hint, bg = "NONE" } },
    { "cssUnitDecorators", { fg = c.hint, bg = "NONE" } },
    { "cssStyle", { fg = c.info, bg = "NONE" } },
    { "cssImportant", { fg = c.preproc, bg = "NONE" } },
    { "jsonKeyword", { fg = c.preproc, bg = "NONE" } },
    { "yamlBlockMappingKey", { fg = c.preproc, bg = "NONE" } },
    { "tomlTSProperty", { fg = c.preproc, bg = "NONE" } },
  }
end

M.setup = function(colorscheme)
  for _,v in pairs(M.options(colorscheme)) do
    vim.api.nvim_set_hl(0, v[1], v[2])
  end
end

return M
