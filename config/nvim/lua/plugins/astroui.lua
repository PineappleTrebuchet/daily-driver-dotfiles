-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    colorscheme = "industry",
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#000000" },
      }, 
      industry = {
        Normal = { bg = "#000000" },
        CursorLine = { bg = "#242424" },
        Visual =  { bg = "#242424" },
        TabLineFill = { bg = "#141414" },
        MatchParen = { fg = "NONE", bg = "#404040" },
        StatusLine = { bg = "#141414" },
        WinSeparator = { fg = "#a6a6a6", bg = "NONE" },
        Pmenu = { bg = "#141414" }, 
        EndOfBuffer = { fg = "#262626" },
        FoldColumn = { fg = "#00ff00" },
        CursorLineFold = { bg = "NONE", fg = "#00ff00" }, 
        CursorLineNr = { fg = "#00ffff", bold = true },
        DiagnosticInfo = { fg = "#9933ff" },
        Comment = { fg = "#0033cc", italic = true },
      } 
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}
