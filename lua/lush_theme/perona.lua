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

local base00 = hsl(316, 24, 8)
local base01 = hsl(316, 24, 12)
local base02 = hsl(316, 24, 16)
local base03 = hsl(316, 8, 48)
local base04 = hsl(316, 12, 36)
local base05 = hsl(328, 72, 90)
local base06 = hsl(328, 60, 96)
local base07 = hsl(336, 18, 20)
local base0A = hsl(291, 36, 60)
local base09 = hsl(198, 60, 60)
local base08 = hsl(348, 72, 48)
local base0B = hsl(336, 60, 60)
local base0C = hsl(353, 72, 72)
local base0D = hsl(303, 48, 72)
local base0E = hsl(205, 48, 72)
local base0F = hsl(331, 90, 72)

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
    ColorColumn    { bg = base01 },
    Conceal        { bg = base00, fg = base0D },
    Cursor         { bg = base05, fg = base00 },
    CurSearch      { bg = base09, fg = base01 },
    -- lCursor        { },
    -- CursorIM       { },
    CursorColumn   { Cursor },
    CursorLine     { bg = base02 },
    Directory      { fg = base0D },
    DiffAdd        { bg = base0B, fg = base01 },
    DiffChange     { bg = base07, fg = base06 },
    DiffDelete     { bg = base08, fg = base01 },
    DiffText       { bg = base0D, fg = base01 },
    EndOfBuffer    { fg = base03 },
    TermCursor     { Cursor },
    TermCursorNC   { bg = base03, fg = base05 },
    ErrorMsg       { fg = base08 },
    VertSplit      { fg = base0B },
    Folded         { bg = base01, fg = base03 },
    FoldColumn     { bg = base01, fg = base0C },
    SignColumn     { Folded },
    IncSearch      { bg = base09, fg = base01 },
    Substitute     { bg = base0A, fg = base01 },
    LineNr         { bg = base0F, fg = base02},
    CursorLineNr   { bg = base00, fg = base0E, gui = "bold" },
    CursorLineFold { FoldColumn },
    CursorLineSign { SignColumn },
    MatchParen     { bg = base07 },
    ModeMsg        { fg = base0B },
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg        { ModeMsg }, -- |more-prompt|
    NonText        { fg = base03 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal         { bg = base00, fg = base05 },
    -- NormalFloat    { }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    -- FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
    Pmenu          { bg = base01, fg = base05 }, -- Popup menu: Normal item.
    PmenuSel       { bg = base05, fg = base01 }, -- Popup menu: Selected item.
    PmenuKind      { Pmenu }, -- Popup menu: Normal item "kind"
    PmenuKindSel   { PmenuSel }, -- Popup menu: Selected item "kind"
    PmenuExtra     { Pmenu }, -- Popup menu: Normal item "extra text"
    PmenuExtraSel  { PmenuSel }, -- Popup menu: Selected item "extra text"
    PmenuSbar      { fg = base02 }, -- Popup menu: Scrollbar.
    PmenuThumb     { fg = base07 }, -- Popup menu: Thumb of the scrollbar.
    Question       { fg = base0E } , -- |hit-enter| prompt and yes/no questions
    QuickFixLine   { fg= base0E }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search         { bg = base0C, fg = base06 }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad       { fg = base08, gui = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap       { fg = base0C, gui = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal     { fg = base0D, gui = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare      { fg = base0E, gui = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		StatusLine     { bg = base01, fg = base05, gui = "italic" },
    StatusLineNC   { bg = base00, fg = base04 },
    TabLine        { bg = base02, fg = base03 }, -- Tab pages line, not active tab page label
    TabLineFill    { TabLine }, -- Tab pages line, where there are no labels
    TabLineSel     { bg = base01, fg = base0B }, -- Tab pages line, active tab page label
    Title          { fg = base0D }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual         { bg = base02, fg = base06 },
    VisualNOS      { fg = base08 }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg     { fg = base08 }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Winseparator   { VertSplit }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu       { bg = base06, fg = base08}, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = base03, gui = "italic" }, -- Any comment

    Constant       { fg = base09 }, -- (*) Any constant
    String         { fg = base0B }, --   A string constant: "this is a string"
    Character      { fg = base08 }, --   A character constant: 'c', '\n'
    Number         { fg = base09 }, --   A number constant: 234, 0xff
    Boolean        { fg = base09 }, --   A boolean constant: TRUE, false
    Float          { fg = base09 }, --   A floating point constant: 2.3e10

    Identifier     { fg = base08 }, -- (*) Any variable name
    Function       { fg = base0D }, --   Function name (also: methods for classes)

    Statement      { fg = base08 }, -- (*) Any statement
    Conditional    { fg = base0E }, --   if, then, else, endif, switch, etc.
    Repeat         { fg = base0A }, --   for, do, while, etc.
    Label          { fg = base0A }, --   case, default, etc.
    Operator       { fg = base05 }, --   "sizeof", "+", "*", etc.
    Keyword        { fg = base0E }, --   any other keyword
    Exception      { fg = base08 }, --   try, catch, throw

    PreProc        { fg = base0A }, -- (*) Generic Preprocessor
    Include        { fg = base0D }, --   Preprocessor #include
    Define         { fg = base0E }, --   Preprocessor #define
    Macro          { fg = base08 }, --   Same as Define
    PreCondit      { fg = base0E}, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = base0A }, -- (*) int, long, char, etc.
    StorageClass   { fg = base0A }, --   static, register, volatile, etc.
    Structure      { fg = base0E }, --   struct, union, enum, etc.
    Typedef        { fg = base0A }, --   A typedef

    Special        { fg = base0C }, -- (*) Any special symbol
    SpecialChar    { fg = base0F }, --   Special character in a constant
    Tag            { fg = base0A }, --   You can use CTRL-] on this
    Delimiter      { fg = base0F }, --   Character that needs attention
    SpecialComment { fg = base0E}, --   Special things inside a comment (e.g. '\n')
    Debug          { fg = base08 }, --   Debugging statements

    Underlined     { fg = base08,  gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { fg = base08 }, -- Any erroneous construct
    Todo           { bg = base01, fg = base0A }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

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
    DiagnosticError            { fg = base08 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = base09 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = base05 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = base03 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = base0C } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
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
    sym"@variable"          { fg = base05 }, -- Identifier
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
