vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "fruitpunch"
vim.o.background = "dark"

local hi = vim.api.nvim_set_hl

-- Editor colors
hi(0, "Normal",         { bg = "#0d0d0d", fg = "#f2f2f2" })
hi(0, "NormalFloat",    { bg = "#191919", fg = "#f2f2f2" })
hi(0, "CursorLine",     { bg = "#242424" })
hi(0, "CursorLineNr",   { fg = "#00ffff", bold = true })
hi(0, "CursorLineFold", { bg = "NONE", fg = "#00ff00" })
hi(0, "CursorLineSign", { bg = "NONE" })
hi(0, "ColorColumn",    { bg = "#222222" })
hi(0, "SignColumn",     { bg = "#0d0d0d" })
hi(0, "Search",         { fg = "#0d0d0d", bg = "#ffff00" })
hi(0, "IncSearch",      { fg = "#0d0d0d", bg = "#00ff00" })
hi(0, "CurSearch",      { fg = "#0d0d0d", bg = "#00ff00" })
hi(0, "LineNr",         { fg = "#ffff00" })
hi(0, "EndOfBuffer",    { fg = "#262626" })
hi(0, "MatchParen",     { fg = "NONE", bg = "#404040" })
hi(0, "Visual",         { bg = "#242424" })
hi(0, "FoldColumn",     { fg = "#00ff00", bg = "#0d0d0d" })
hi(0, "Directory",      { fg = "#2222ff", bg = "#0d0d0d" })

-- Indent colors
hi(0, "NonText",  { fg = "#008800" })
hi(0, "IblScope", { fg = "#00ff00" })

-- Command line
hi(0, "ModeMsg",     { fg = "#00ffff", bg = "#0d0d0d" })
hi(0, "MoreMsg",     { fg = "#ffff00", bg = "#0d0d0d" })

-- Splits & borders
hi(0, "WinSeparator",    { fg = "#f2f2f2",  bg = "NONE" })
hi(0, "VertSplit",       { fg = "#f2f2f2",  bg = "NONE" })

-- Status & Tab Line
hi(0, "StatusLine",  { bg = "#191919",  fg = "#bbbbbb" })
hi(0, "TabLineFill", { bg = "#191919" })
hi(0, "WinBar",      { bg = "#0d0d0d", fg = "#f2f2f2" })

-- Pmenu
hi(0, "Pmenu", { bg = "#191919",  fg = "#f2f2f2" })

-- Syntax
hi(0, "Comment",    { fg = "#5555ee" })
hi(0, "String",     { fg = "#9933ff" })
hi(0, "Constant",   { fg = "#2222ff" })
hi(0, "Variable",   { link = "Constant"})
hi(0, "Identifier", { fg = "#00ffff" })
hi(0, "Function",   { fg = "#ffff00" })
hi(0, "Statement",  { fg = "#ff00ff" })
hi(0, "Type",       { fg = "#00ff00",  bold = true, })
hi(0, "PreProc",    { fg = "#ffff00" })
hi(0, "Special",    { fg = "#ff00ff" })
hi(0, "Debug",      { fg = "#ff0000" })
hi(0, "Error",      { fg = "#ff0000",  bold = true })
hi(0, "WarningMsg",    { fg = "#ffff00" })
hi(0, "Todo",       { fg = "#ff00ff",  bold = true })
hi(0, "Underlined", { underline = true })
hi(0, "Folded",     { bg = "#000033" })

-- Treesitter
hi(0, "@variable", { link = "Identifier" })

-- Diagnostics (and todo-comments.nvim colors)
hi(0, "DiagnosticError",            { fg = "#ff0000" })
hi(0, "DiagnosticWarn",             { fg = "#ffff00" })
hi(0, "DiagnosticInfo",             { fg = "#ff00ff" })
hi(0, "DiagnosticHint",             { fg = "#5555ee" })
hi(0, "DiagnosticOk",               { fg = "#00ff00" })
hi(0, "DiagnosticUnderlineError",   { undercurl = true, sp = "#ff0000" })
hi(0, "DiagnosticUnderlineWarn",    { undercurl = true, sp = "#ffff00" })
hi(0, "DiagnosticUnderlineInfo",    { undercurl = true, sp = "#ff00ff" })
hi(0, "DiagnosticUnderlineHint",    { undercurl = true, sp = "#5555ee" })
hi(0, "DiagnosticVirtualTextError", { fg = "#ff0000" })
hi(0, "DiagnosticVirtualTextWarn",  { fg = "#ffff00" })
hi(0, "DiagnosticVirtualTextInfo",  { fg = "#ff00ff" })
hi(0, "DiagnosticVirtualTextHint",  { fg = "#5555ee" })

-- Git/Gutter
hi(0, "GitSignsAdd",    { fg = "#00ff00",  bg = "#0d0d0d" })
hi(0, "GitSignsChange", { fg = "#4444ff",  bg = "#0d0d0d" })
hi(0, "GitSignsDelete", { fg = "#ff00ff",  bg = "#0d0d0d" })
hi(0, "DiffAdd",        { bg = "#009900", fg = "#f2f2f2" })
hi(0, "DiffChange",     { bg = "#002255", fg = "#f2f2f2" })
hi(0, "DiffDelete",     { bg = "#550055",  fg = "#f2f2f2" })
hi(0, "DiffText",       { bg = "#0044aa", fg = "#f2f2f2",  bold = true })

-- Markdown files
hi(0, "Title",              { fg = "#ff00ff" })
hi(0, "markdownCode",       { fg = "#9933ff" })
hi(0, "markdownUrl",        { fg = "#0000ff",  underline = true })
hi(0, "@markup.link",       { fg = "#0000ff" })
hi(0, "@markup.link.label", { fg = "#0000ff" })
hi(0, "markdownBold",       { bold = true })
hi(0, "markdownItalic",     { italic = true })

-- Heirline
hi(0, "HeirlineNormal",   { bg = "#9933ff" })
hi(0, "HeirlineInsert",   { bg = "#00ffff" })
hi(0, "HeirlineVisual",   { bg = "#0000ff" })
hi(0, "HeirlineReplace",  { bg = "#ff0000" })
hi(0, "HeirlineCommand",  { bg = "#ff00ff" })
hi(0, "HeirlineTerminal", { bg = "#ffff00" })

-- Mason
hi(0, "MasonHeader",             {bg = "#ffff00", fg = "#000000"})
hi(0, "MasonHighlight",          {fg = "#00ff00" })
hi(0, "MasonHighlightBlockBold", {bg = "#00ff00", fg = "#0d0d0d" })

-- Other
hi(0, "DashboardCenter", { fg = "#00ff00" })
