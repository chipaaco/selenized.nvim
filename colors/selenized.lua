-- Copyright © 2024 Calin Don. All Rights Reserved.

vim.cmd.hi('clear')
if vim.fn.exists('syntax_on') then
    vim.cmd.syntax('reset')
end
vim.g.colors_name = 'selenized'

local colors = {
    bg_1       = '#174956',
    bg_2       = '#325b66',
    bg_15      = '#14404b',
    dim_0      = '#72898f',
    dim_1      = '#90998f',
    fg_0       = '#adbcbc',
    fg_1       = '#cad8d9',
    red        = '#fa5750',
    green      = '#75b938',
    yellow     = '#dbb32d',
    blue       = '#4695f7',
    magenta    = '#f275be',
    cyan       = '#41c7b9',
    orange     = '#ed8649',
    violet     = '#af88eb',
    br_red     = '#ff665c',
    br_green   = '#84c747',
    br_yellow  = '#ebc13d',
    br_blue    = '#58a3ff',
    br_magenta = '#ff84cd',
    br_cyan    = '#53d6c7',
    br_orange  = '#fd9456',
    br_violet  = '#bd96fa',
}

vim.g.terminal_color_0  = colors.bg_1
vim.g.terminal_color_1  = colors.red
vim.g.terminal_color_2  = colors.green
vim.g.terminal_color_3  = colors.yellow
vim.g.terminal_color_4  = colors.blue
vim.g.terminal_color_5  = colors.magenta
vim.g.terminal_color_6  = colors.cyan
vim.g.terminal_color_7  = colors.dim_0
vim.g.terminal_color_8  = colors.bg_2
vim.g.terminal_color_9  = colors.br_red
vim.g.terminal_color_10 = colors.br_green
vim.g.terminal_color_11 = colors.br_yellow
vim.g.terminal_color_12 = colors.br_blue
vim.g.terminal_color_13 = colors.br_magenta
vim.g.terminal_color_14 = colors.br_cyan
vim.g.terminal_color_15 = colors.fg_1

local none = 'NONE'

local hi = {
    Normal           = { fg = colors.fg_0, bg = none },
    SignColumn       = { fg = none, bg = none }, -- Símbolos del LSP
    LineNr           = { fg = colors.dim_0, bg = none }, -- Números
    CursorLineNr     = { fg = colors.fg_1, bg = none, bold = true },
    FoldColumn       = { fg = none, bg = none },
    WinSeparator     = { fg = colors.bg_2, bg = none, bold = true },
    
    StatusLine       = { fg = colors.fg_1, bg = colors.bg_2 },
    StatusLineNC     = { fg = colors.dim_0, bg = colors.bg_1 },
    WinBar           = { fg = colors.dim_0, bg = none },

    Cursor           = { fg = none, bg = none, reverse = true },
    CursorLine       = { fg = none, bg = colors.bg_1 },
    CursorColumn     = { fg = none, bg = colors.bg_1 },
    ColorColumn      = { fg = none, bg = colors.bg_1 },
    Visual           = { fg = none, bg = colors.bg_2 },
    MatchParen       = { fg = colors.br_yellow, bg = colors.bg_2, bold = true },
    
    IncSearch        = { fg = colors.orange, bg = none, reverse = true },
    Search           = { fg = colors.yellow, bg = none, reverse = true },
    CurSearch        = { fg = colors.br_yellow, bg = none, reverse = true },

    Pmenu            = { fg = colors.dim_0, bg = colors.bg_1 },
    PmenuSel         = { fg = none, bg = colors.bg_2 },
    FloatBorder      = { fg = colors.bg_2, bg = none },
    NormalFloat      = { fg = colors.dim_0, bg = none },
    FloatTitle       = { fg = colors.dim_0, bg = none },

    Comment          = { fg = colors.dim_0, bg = none, italic = true },
    Constant         = { fg = colors.cyan, bg = none },
    String           = { link = 'Constant' },
    Number           = { link = 'Constant' },
    Identifier       = { fg = colors.br_blue, bg = none },
    Function         = { link = 'Identifier' },
    Statement        = { fg = colors.br_yellow, bg = none },
    Keyword          = { link = 'Statement' },
    Operator         = { link = 'Statement' },
    PreProc          = { fg = colors.orange, bg = none },
    Type             = { fg = colors.green, bg = none },
    Special          = { fg = colors.red, bg = none },
    Delimiter        = { link = 'Special' },
    Underlined       = { fg = colors.violet, bg = none, underline = true },
    Error            = { fg = colors.red, bg = none, bold = true },
    Todo             = { fg = colors.magenta, bg = none, bold = true },

    GitSignsAdd      = { fg = colors.green, bg = none },
    GitSignsChange   = { fg = colors.blue, bg = none },
    GitSignsDelete   = { fg = colors.red, bg = none },

    DiagnosticError  = { fg = colors.red, bg = none },
    DiagnosticWarn   = { fg = colors.cyan, bg = none },
    DiagnosticInfo   = { fg = colors.cyan, bg = none },
    DiagnosticHint   = { fg = colors.yellow, bg = none },
    
    DiagnosticUnderlineError = { underline = true, sp = colors.red },
    DiagnosticUnderlineWarn  = { underline = true, sp = colors.cyan },
    DiagnosticUnderlineInfo  = { underline = true, sp = colors.cyan },
    DiagnosticUnderlineHint  = { underline = true, sp = colors.yellow },

    LspReferenceText  = { bg = colors.bg_1 },
    LspReferenceRead  = { link = 'LspReferenceText' },
    LspReferenceWrite = { link = 'LspReferenceText' },
}

for group, val in pairs(hi) do
    if type(val) == 'string' then
        val = { link = val }
    end
    vim.api.nvim_set_hl(0, group, val)
end
