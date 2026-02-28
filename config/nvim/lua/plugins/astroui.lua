-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  -- -@type AstroUIOpts
  opts = {
    colorscheme = "industry",
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#000000" },
      }, 
      industry = {
        -- General editor modifications
        CursorLine = { bg = "#222222" },
        CursorLineFold = { bg = "NONE", fg = "#00ff00" }, 
        CursorLineNr = { fg = "#00ffff", bold = true },
        EndOfBuffer = { fg = "#262626" },
        FoldColumn = { fg = "#00ff00" },
        Folded = { bg = "#000033"},
        MatchParen = { fg = "NONE", bg = "#404040" },
        NonText = { fg = "#006666" }, 
        Normal = { bg = "#0d0d0d" },
        Pmenu = { bg = "#181818" }, 
        StatusLine = { bg = "#181818" },
        TabLineFill = { bg = "#181818" },
        Visual =  { bg = "#222222" },
        WinSeparator = { fg = "#cccccc", bg = "NONE" },

        -- Code color modifications
        Comment = { fg = "#0000e6", italic = true },
        Constant = { fg = "#9933ff" },
        Debug = { fg = "#ff0000" },
        DiagnosticInfo = { fg = "#00ff00" }, -- todo statements
        DiagnosticWarn = { fg = "#ff6600" },
        DiagnosticHint = { fg = "#0000e6" },
        -- DiagnosticOk = { fg = "#00ff00" },
        Function = { fg = "#ffff00" },
        Identifier = { fg = "#00ffff" },
        Statement = { fg = "#ff00ff" },
        Type = { fg = "#00ff00", bold = true },
        Special = { fg = "#ff0000" },
        CursorLineSign = { bg = "NONE" },

        -- Markdown modifications
        ColorColumn = { bg = "#222222" },
        Title = {fg = "#ff00ff"}
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
