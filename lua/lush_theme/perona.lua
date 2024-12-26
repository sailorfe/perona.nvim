--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local base0     = hsl(316, 60, 3)	-- #0c030a	base
local base1     = hsl(316, 36, 6)	-- #150a12	kuraigana
local base2     = hsl(316, 24, 9)	-- #1c111a	cocoa
local accent1	= hsl(342, 70, 24)	-- #68122c	nightmare
local accent2	= hsl(342, 70, 36)	-- #9c1c42	wine
local accent3	= hsl(342, 70, 42)	-- #b6204d	nagashidaru
local text0     = hsl(346, 96, 89)	-- #fec8d5	text
local text1     = hsl(346, 15, 57)	-- #a28189
local text2     = hsl(346, 12, 35)	-- #644f54
local black0    = hsl(316, 24, 12)	-- #261722	mihawk
local black1    = hsl(316, 14, 18)	-- #372a34	dracule
local black2    = hsl(316, 47, 6)	-- #160813	coffin
local red0      = hsl(355, 85, 52)	-- #ed1d2e	blood
local red1      = hsl(355, 100, 65)	-- #ff4c5b
local red2		= hsl(355, 100, 40)	-- #cc0011	ruby
local green0    = hsl(298, 57, 65)	-- #d573d9	wonder
local green1    = hsl(298, 93, 78)	-- #f893fb
local green2	= hsl(298, 60, 50)	-- #c733cc	garden
local yellow0   = hsl(351, 100, 68)	-- #ff5c74	sangria
local yellow1   = hsl(351, 100, 75)	-- #ff8093
local yellow2	= hsl(351, 96, 60)	-- #fb3754	fruit
local blue0     = hsl(227, 37, 66)	-- #8896c8	kumashi
local blue1     = hsl(227, 61, 79)	-- #a9b7ea
local blue2		= hsl(227, 48, 60)	-- #687dca	sea
local magenta0  = hsl(332, 100, 72)	-- #ff70b3	surprise
local magenta1  = hsl(332, 100, 79)	-- #ff94c6	zombie
local magenta2	= hsl(332, 98, 60)	-- #fd3592
local cyan0     = hsl(341, 65, 53)	-- #d5396b	jam
local cyan1     = hsl(341, 94, 67)	-- #fa5c8e	berry
local cyan2		= hsl(341, 70, 48)	-- #cc2549
local white0    = hsl(346, 42, 78)	-- #deafba	ghost
local white1    = hsl(346, 65, 85)	-- #f2c0cb
local white2    = hsl(346, 84, 92)	-- #fcd9e1	hollow

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn    { bg = base1 }, -- Columns set with 'colorcolumn'
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
	Cursor			{ bg = text0, fg = base0 }, -- Character under the cursor
    CurSearch		{ bg = cyan1, fg = black1 }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn	{ bg = base2 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine		{ bg = base2 }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory		{ fg = magenta0 }, -- Directory names (and other special names in listings)
    DiffAdd			{ bg = green0, fg = base0}, -- Diff mode: Added line |diff.txt|
    DiffChange		{ bg = yellow0, fg = base0}, -- Diff mode: Changed line |diff.txt|
    DiffDelete		{ bg = red1, fg = base0}, -- Diff mode: Deleted line |diff.txt|
    DiffText		{ fg = red1 }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    TermCursor     { Cursor }, -- Cursor in a focused terminal
    TermCursorNC   { bg = accent1, fg = text0 }, -- Cursor in an unfocused terminal
    ErrorMsg		{ fg = red0 }, -- Error messages on the command line
    -- VertSplit      { }, -- Column separating vertically split windows
    -- Folded         { }, -- Line used for closed folds
    -- FoldColumn     { }, -- 'foldcolumn'
    SignColumn		{ bg = base0 }, -- Column where |signs| are displayed
    IncSearch		{ bg = yellow0, fg = base0 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute		{ bg = yellow1, fg = black1 }, -- |:substitute| replacement text highlighting
    LineNr			{ fg = black2, bg = accent2 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrAbove		{ fg = text1 }, -- Line number for when the 'relativenumber' option is set, above the cursor line
	LineNrBelow		{ LineNrAbove }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr	{ fg = blue0, gui = "bold" }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen		{ bg = yellow1, fg = black2, gui = "bold" }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg			{ fg = green1 }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg			{ fg = yellow0 }, -- |more-prompt|
    NonText			{ fg = green1 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal			{ bg = base0, fg = text0 }, -- Normal text
    -- NormalFloat    { }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    Pmenu			{ fg = text0, bg = base2 }, -- Popup menu: Normal item.
    PmenuSel		{ fg = green0 }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    Question		{ fg = cyan1 }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine	{ fg = cyan1 }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search			{ bg = green1, fg = base2 }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad		{ fg = base0, bg = red0, gui = "underline" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap		{ fg = base0, bg = yellow0, gui = "underline" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal		{ fg = base0, bg = green0, gui = "underline" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare		{ fg = base0, bg = blue0, gui = "underline" }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine		{ bg = accent1, fg = white1, gui = "bold" }, -- Status line of current window
    StatusLineNC	{ bg = base1, fg = text1 }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine			{ fg = text1, bg = base2 }, -- Tab pages line, not active tab page label
    TabLineFill		{ bg = base2 }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title			{ fg = text0 }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual			{ Cursor }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg		{ fg = red0 }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator	{ fg = accent1 }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment			{ fg = text1, gui = "italic" }, -- Any comment

    Constant		{ fg = green0 }, -- (*) Any constant
    String			{ fg = yellow0 }, --   A string constant: "this is a string"
    -- Character      { }, --   A character constant: 'c', '\n'
    Number			{ fg = yellow0 }, --   A number constant: 234, 0xff
    -- Boolean        { }, --   A boolean constant: TRUE, false
    -- Float          { }, --   A floating point constant: 2.3e10

    Identifier		{ fg = blue0 }, -- (*) Any variable name
    Function		{ fg = blue1 }, --   Function name (also: methods for classes)

    Statement		{ fg = cyan0, gui = "bold" }, -- (*) Any statement
    Conditional		{ fg = yellow0, gui = "bold" }, --   if, then, else, endif, switch, etc.
    Repeat			{ fg = green0 }, --   for, do, while, etc.
    Label			{ Conditional }, --   case, default, etc.
    Operator		{ fg = cyan0 }, --   "sizeof", "+", "*", etc.
    Keyword			{ fg = green0 }, --   any other keyword
    Exception		{ fg = red0 }, --   try, catch, throw

    PreProc			{ fg = red0 }, -- (*) Generic Preprocessor
    Include			{ fg = magenta0 }, --   Preprocessor #include
    Define			{ fg = yellow0 }, --   Preprocessor #define
    Macro			{ Define }, --   Same as Define
    PreCondit		{ fg = yellow1 }, --   Preprocessor #if, #else, #endif, etc.

    Type			{ fg = red0 }, -- (*) int, long, char, etc.
    StorageClass	{ fg = magenta0 }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special			{ fg = yellow0 }, -- (*) Any special symbol
    SpecialChar		{ fg = yellow0 }, --   Special character in a constant
    Tag				{ fg = yellow0 }, --   You can use CTRL-] on this
    Delimiter		{ fg = yellow0 }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    Debug			{ fg = yellow0 }, --   Debugging statements

    Underlined		{ fg = white2, gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error			{ bg = red0, fg = base0 }, -- Any erroneous construct
    Todo			{ fg = yellow0 }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = red0 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = yellow1 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = cyan1 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = blue1 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = green1 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    DiagnosticUnderlineError   { fg = red0, gui = "underline" } , -- Used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    { fg = yellow1, gui = "underline" } , -- Used to underline "Warn" diagnostics.
    DiagnosticUnderlineInfo    { fg = cyan1, gui = "underline" } , -- Used to underline "Info" diagnostics.
    DiagnosticUnderlineHint    { fg = blue1, gui = "underline" } , -- Used to underline "Hint" diagnostics.
    DiagnosticUnderlineOk      { fg = green1, gui = "underline" } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    -- sym"@function"          { }, -- Function
    -- sym"@function.builtin"  { }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    -- sym"@field"             { }, -- Identifier
    -- sym"@property"          { }, -- Identifier
    -- sym"@constructor"       { }, -- Special
    -- sym"@conditional"       { }, -- Conditional
    -- sym"@repeat"            { }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    -- sym"@keyword"           { }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    sym"@variable"          { fg = text0 }, -- Identifier
    -- sym"@type"              { }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    -- sym"@storageclass"      { }, -- StorageClass
    -- sym"@structure"         { }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
