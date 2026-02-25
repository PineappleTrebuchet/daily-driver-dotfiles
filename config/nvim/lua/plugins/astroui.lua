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
        Normal = { bg = "#0d0d0d" },
        CursorLine = { bg = "#222222" },
        Visual =  { bg = "#222222" },
        TabLineFill = { bg = "#181818" },
        MatchParen = { fg = "NONE", bg = "#404040" },
        StatusLine = { bg = "#181818" },
        WinSeparator = { fg = "#a6a6a6", bg = "NONE" },
        Pmenu = { bg = "#181818" }, 
        EndOfBuffer = { fg = "#262626" },
        FoldColumn = { fg = "#00ff00" },
        CursorLineFold = { bg = "NONE", fg = "#00ff00" }, 
        CursorLineNr = { fg = "#00ffff", bold = true },

        -- Code color modifications
        Comment = { fg = "#7700b3", italic = true },
        Constant = { fg = "#00ff00" },
        DiagnosticInfo = { fg = "#7700b3" }, -- todo statements
        Function = { fg = "#ffff00" },
        Identifier = { fg = "#00ffff" },
        Statement = { fg = "#ff00ff" },
        Type = { fg = "#00ff00", bold = true },
        Special = { fg = "#ff0000" },

        -- Markdown modifications
        ColorColumn = { bg = "#222222" },
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
