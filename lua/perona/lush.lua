local gpp = require("perona.horo").get()
---@diagnostic disable: undefined-global
local lush = require("lush")
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {

    -- ui
    Normal({ bg = gpp.base, fg = gpp.text }),
    NormalFloat({ bg = gpp.surface, fg = gpp.text }),
    NormalNC({ bg = gpp.base, fg = gpp.faint }),

    FloatBorder({ bg = gpp.surface, fg = gpp.muted }),
    FloatTitle({ bg = gpp.surface, fg = gpp.hollow, gui = "bold" }),
    FloatFooter({ FloatBorder }),

    ColorColumn({ bg = gpp.surface }),
    Conceal({ fg = gpp.muted }),
    CursorLine({ bg = gpp.overlay }),
    CursorColumn({ bg = gpp.overlay }),
    CursorLineNr({ fg = gpp.text, gui = "bold" }),
    LineNr({ fg = gpp.muted }),
    LineNrAbove({ LineNr }),
    LineNrBelow({ LineNr }),

    SignColumn({ bg = gpp.base }),
    FoldColumn({ fg = gpp.high, bg = gpp.surface }),
    Folded({ bg = gpp.low, fg = gpp.faint }),

    StatusLine({ bg = gpp.overlay, fg = gpp.text }),
    StatusLineNC({ bg = gpp.surface, fg = gpp.muted }),
    WinBar({ bg = gpp.med, fg = gpp.faint }),
    WinBarNC({ bg = gpp.med, fg = gpp.muted }),
    WinSeparator({ fg = gpp.surface }), -- 0.9+
    VertSplit({ fg = gpp.surface }),  -- for compatibility

    TabLine({ bg = gpp.surface, fg = gpp.muted }),
    TabLineFill({ bg = gpp.base }),
    TabLineSel({ bg = gpp.overlay, fg = gpp.hollow, gui = "bold" }),

    Pmenu({ bg = gpp.surface, fg = gpp.text }),
    PmenuSel({ bg = gpp.overlay, fg = gpp.hollow, gui = "bold" }),
    PmenuKind({ bg = gpp.surface, fg = gpp.zombie }),
    PmenuKindSel({ bg = gpp.overlay, fg = gpp.zombie, gui = "bold" }),
    PmenuExtra({ bg = gpp.surface, fg = gpp.muted }),
    PmenuExtraSel({ bg = gpp.overlay, fg = gpp.faint }),
    PmenuSbar({ bg = gpp.overlay }),
    PmenuThumb({ bg = gpp.high }),
    PmenuMatch({ fg = gpp.hollow, gui = "bold" }), -- 0.11 fuzzy match
    PmenuMatchSel({ fg = gpp.hollow, gui = "bold,underline" }),

    -- 0.11: popup/window title when using noice / native cmdline
    MsgArea({ fg = gpp.text }),
    MsgSeparator({ fg = gpp.overlay }),
    ModeMsg({ fg = gpp.text, gui = "bold" }),
    MoreMsg({ fg = gpp.garden }),
    Question({ fg = gpp.kumashi }),
    WarningMsg({ fg = gpp.sangria }),
    ErrorMsg({ fg = gpp.mihawk, gui = "bold" }),

    Cursor({ bg = gpp.text, fg = gpp.base }),
    lCursor({ Cursor }),
    CursorIM({ Cursor }),
    TermCursor({ bg = gpp.hollow, fg = gpp.base }),
    TermCursorNC({ bg = gpp.faint, fg = gpp.base }),

    Visual({ bg = gpp.hollow, fg = gpp.base }),
    VisualNOS({ Visual }),
    CurSearch({ bg = gpp.sangria, fg = gpp.base }),
    IncSearch({ CurSearch }),
    Search({ bg = gpp.med, fg = gpp.sangria }),
    Substitute({ bg = gpp.kumashi, fg = gpp.base }),

    MatchParen({ bg = gpp.high, gui = "bold" }),

    NonText({ fg = gpp.muted }),
    Whitespace({ fg = gpp.overlay }),
    SpecialKey({ fg = gpp.muted }),
    EndOfBuffer({ fg = gpp.muted }),

    Directory({ fg = gpp.kumashi }),
    Title({ fg = gpp.hollow, gui = "bold" }),
    WildMenu({ bg = gpp.text, fg = gpp.base }),

    QuickFixLine({ bg = gpp.overlay, gui = "bold" }),

    -- diffs
    DiffAdd({ bg = gpp.garden, fg = gpp.base }),
    DiffChange({ bg = gpp.hollow, fg = gpp.base }),
    DiffDelete({ fg = gpp.mihawk, gui = "bold" }),
    DiffText({ bg = gpp.kumashi, fg = gpp.base }),

    -- spell
    SpellBad({ fg = gpp.mihawk, gui = "undercurl" }),
    SpellCap({ fg = gpp.sangria, gui = "undercurl" }),
    SpellLocal({ fg = gpp.garden, gui = "undercurl" }),
    SpellRare({ fg = gpp.kumashi, gui = "undercurl" }),

    -- misc
    Underlined({ gui = "underline" }),
    Ignore({ fg = gpp.muted }),
    Error({ bg = gpp.mihawk, fg = gpp.light }),
    Todo({ fg = gpp.sangria, gui = "bold" }),

    -- traditional syntax
    Comment({ fg = gpp.faint, gui = "italic" }),

    Constant({ fg = gpp.sangria }),
    String({ Constant }), -- maybe change
    Character({ Constant }),
    Number({ Constant }),
    Boolean({ Constant }),
    Float({ Constant }),

    Identifier({ fg = gpp.zombie }),
    Function({ fg = gpp.hollow }),

    Statement({ fg = gpp.kumashi, gui = "bold" }),
    Conditional({ Statement }),
    Repeat({ Statement }),
    Label({ Statement }),
    Operator({ fg = gpp.text }),
    Keyword({ Statement }), -- maybe change
    Exception({ Statement }),

    PreProc({ fg = gpp.kumashi }),
    Include({ PreProc }),
    Define({ PreProc }),
    Macro({ PreProc }),
    PreCondit({ PreProc }),

    Type({ fg = gpp.garden }),
    StorageClass({ Type }),
    Structure({ Type }),
    Typedef({ fg = gpp.garden, gui = "italic" }),

    Special({ fg = gpp.zombie }),
    SpecialChar({ Special }),
    Tag({ Special }),
    Delimiter({ fg = gpp.text }),
    SpecialComment({ fg = gpp.faint, gui = "bold" }),
    Debug({ Special }),

    -- diagonistics
    DiagnosticError({ fg = gpp.mihawk }),
    DiagnosticWarn({ fg = gpp.sangria }),
    DiagnosticInfo({ fg = gpp.kumashi }),
    DiagnosticHint({ fg = gpp.hollow }),
    DiagnosticOk({ fg = gpp.garden }),

    DiagnosticVirtualTextError({ DiagnosticError, gui = "italic" }),
    DiagnosticVirtualTextWarn({ DiagnosticWarn, gui = "italic" }),
    DiagnosticVirtualTextInfo({ DiagnosticInfo, gui = "italic" }),
    DiagnosticVirtualTextHint({ DiagnosticHint, gui = "italic" }),
    DiagnosticVirtualTextOk({ DiagnosticOk, gui = "italic" }),

    DiagnosticUnderlineError({ DiagnosticError, gui = "undercurl" }),
    DiagnosticUnderlineWarn({ DiagnosticWarn, gui = "undercurl" }),
    DiagnosticUnderlineInfo({ DiagnosticInfo, gui = "undercurl" }),
    DiagnosticUnderlineHint({ DiagnosticHint, gui = "undercurl" }),
    DiagnosticUnderlineOk({ DiagnosticOk, gui = "undercurl" }),

    DiagnosticFloatingError({ DiagnosticError }),
    DiagnosticFloatingWarn({ DiagnosticWarn }),
    DiagnosticFloatingInfo({ DiagnosticInfo }),
    DiagnosticFloatingHint({ DiagnosticHint }),
    DiagnosticFloatingOk({ DiagnosticOk }),

    DiagnosticSignError({ DiagnosticError }),
    DiagnosticSignWarn({ DiagnosticWarn }),
    DiagnosticSignInfo({ DiagnosticInfo }),
    DiagnosticSignHint({ DiagnosticHint }),
    DiagnosticSignOk({ DiagnosticOk }),

    -- 0.10+ inline diagnostic (virtual_lines)
    DiagnosticDeprecated({ gui = "strikethrough", fg = gpp.muted }),

    -- treesitter (0.9+)

    -- identifiers
    sym("@variable")({ fg = gpp.text, gui = "italic" }),
    sym("@variable.builtin")({ fg = gpp.hollow, gui = "bold_italic" }),
    sym("@variable.parameter")({ Type }),     -- (injected_functions)
    sym("@variable.member")({ fg = gpp.text }), -- struct fields, object keys

    sym("@constant")({ Constant }),
    sym("@constant.builtin")({ fg = gpp.garden, gui = "bold_italic" }),
    sym("@constant.macro")({ Define }),

    sym("@module")({ fg = gpp.sangria }),
    sym("@module.builtin")({ fg = gpp.sangria, gui = "bold_italic" }),
    sym("@label")({ fg = gpp.kumashi }),

    -- literals
    sym("@string")({ String }),
    sym("@string.escape")({ fg = gpp.hollow }),
    sym("@string.special")({ fg = gpp.hollow }),
    sym("@string.regexp")({ fg = gpp.sangria }),
    sym("@string.special.url")({ fg = gpp.kumashi, gui = "underline" }),

    sym("@character")({ Character }),
    sym("@character.special")({ SpecialChar }),
    sym("@boolean")({ Boolean }),
    sym("@number")({ Number }),
    sym("@number.float")({ Float }),

    -- types
    sym("@type")({ Type }),
    sym("@type.builtin")({ fg = gpp.garden, gui = "bold_italic" }),
    sym("@type.definition")({ Typedef }),

    -- functions
    sym("@function")({ Function }),
    sym("@function.builtin")({ fg = gpp.zombie, gui = "bold_italic" }),
    sym("@function.macro")({ Macro }),
    sym("@function.method")({ Function }),
    sym("@constructor")({ fg = gpp.hollow }),

    -- keywords
    sym("@keyword")({ Keyword }),
    sym("@keyword.function")({ fg = gpp.kumashi, gui = "italic" }),
    sym("@keyword.operator")({ fg = gpp.kumashi }),
    sym("@keyword.import")({ Include }),
    sym("@keyword.repeat")({ Repeat }),
    sym("@keyword.return")({ fg = gpp.mihawk, gui = "italic" }),
    sym("@keyword.exception")({ Exception }),
    sym("@keyword.conditional")({ Conditional }),
    sym("@keyword.directive")({ PreProc }),

    -- punctuation
    sym("@punctuation.delimiter")({ fg = gpp.muted }),
    sym("@punctuation.bracket")({ fg = gpp.text }),
    sym("@punctuation.special")({ fg = gpp.hollow }),

    -- comments
    sym("@comment")({ Comment }),
    sym("@comment.documentation")({ fg = gpp.faint, gui = "italic" }),
    sym("@comment.error")({ fg = gpp.mihawk, gui = "bold" }),
    sym("@comment.warning")({ fg = gpp.sangria, gui = "bold" }),
    sym("@comment.todo")({ fg = gpp.sangria, gui = "bold" }),
    sym("@comment.note")({ fg = gpp.kumashi, gui = "bold" }),

    -- markup (markdown, rst, etc.)
    sym("@markup.raw")({ fg = gpp.garden }),
    sym("@markup.raw.block")({ fg = gpp.garden }),
    sym("@markup.link")({ fg = gpp.kumashi, gui = "underline" }),
    sym("@markup.link.url")({ fg = gpp.kumashi, gui = "underline,italic" }),
    sym("@markup.link.label")({ fg = gpp.hollow }),
    sym("@markup.list")({ fg = gpp.sangria }),
    sym("@markup.heading")({ fg = gpp.hollow, gui = "bold" }),
    sym("@markup.heading.1")({ bg = gpp.hollow.darken(70).desaturate(60), fg = gpp.hollow, gui = "bold" }),
    sym("@markup.heading.2")({ bg = gpp.sangria.darken(70).desaturate(60), fg = gpp.sangria, gui = "bold" }),
    sym("@markup.heading.3")({ bg = gpp.garden.darken(70).desaturate(60), fg = gpp.garden, gui = "bold" }),
    sym("@markup.heading.4")({ bg = gpp.zombie.darken(70).desaturate(60), fg = gpp.zombie, gui = "bold" }),
    sym("@markup.heading.5")({ bg = gpp.kumashi.darken(70).desaturate(60), fg = gpp.kumashi, gui = "bold" }),
    sym("@markup.heading.6")({ bg = gpp.mihawk.darken(70).desaturate(60), fg = gpp.mihawk, gui = "bold" }),
    sym("@markup.strong")({ gui = "bold" }),
    sym("@markup.italic")({ gui = "italic" }),
    sym("@markup.strikethrough")({ gui = "strikethrough", fg = gpp.muted }),
    sym("@markup.quote")({ fg = gpp.faint, gui = "italic" }),

    -- misc TS
    sym("@operator")({ Operator }),
    sym("@attribute")({ fg = gpp.sangria }),
    sym("@attribute.builtin")({ fg = gpp.sangria, gui = "bold_italic" }),
    sym("@property")({ fg = gpp.hollow, gui = "italic" }), -- would love to change this
    sym("@tag")({ fg = gpp.kumashi }),
    sym("@tag.builtin")({ fg = gpp.kumashi, gui = "bold_italic" }),
    sym("@tag.attribute")({ fg = gpp.sangria }),
    sym("@tag.delimiter")({ fg = gpp.muted }),

    sym("@diff.plus")({ fg = gpp.garden }),
    sym("@diff.minus")({ fg = gpp.mihawk }),
    sym("@diff.delta")({ fg = gpp.hollow }),

    -- LSP semantic tokens (0.9+)
    sym("@lsp.type.class")({ Type }),
    sym("@lsp.type.decorator")({ fg = gpp.sangria }),
    sym("@lsp.type.enum")({ Type }),
    sym("@lsp.type.enumMember")({ Constant }),
    sym("@lsp.type.function")({ Function }),
    sym("@lsp.type.interface")({ Typedef }),
    sym("@lsp.type.macro")({ Macro }),
    sym("@lsp.type.method")({ Function }),
    sym("@lsp.type.namespace")({ fg = gpp.text, gui = "italic" }),
    sym("@lsp.type.parameter")({ fg = gpp.zombie, gui = "italic" }),
    sym("@lsp.type.property")({ fg = gpp.text }),
    sym("@lsp.type.struct")({ Structure }),
    sym("@lsp.type.type")({ Type }),
    sym("@lsp.type.typeParameter")({ Typedef }),
    sym("@lsp.type.variable")({ fg = gpp.text }),
    sym("@lsp.type.keyword")({ Keyword }),
    sym("@lsp.type.comment")({ Comment }),
    sym("@lsp.type.string")({ String }),
    sym("@lsp.type.number")({ Number }),
    sym("@lsp.type.operator")({ Operator }),

    sym("@lsp.mod.deprecated")({ gui = "strikethrough", fg = gpp.muted }),
    sym("@lsp.mod.readonly")({ gui = "italic" }),
    sym("@lsp.mod.defaultLibrary")({ gui = "italic" }),

    -- markdown
    markdownH1({ fg = gpp.hollow, gui = "bold" }),
    markdownH2({ fg = gpp.sangria, gui = "bold" }),
    markdownH3({ fg = gpp.garden, gui = "bold" }),
    markdownH4({ fg = gpp.zombie, gui = "bold" }),
    markdownH5({ fg = gpp.kumashi, gui = "bold" }),
    markdownH6({ fg = gpp.mihawk, gui = "bold" }),
    markdownH1Delimiter({ markdownH1 }),
    markdownH2Delimiter({ markdownH2 }),
    markdownH3Delimiter({ markdownH3 }),
    markdownH4Delimiter({ markdownH4 }),
    markdownH5Delimiter({ markdownH5 }),
    markdownH6Delimiter({ markdownH6 }),

    -- plugins
    GitSignsAdd({ sym("@diff.plus") }),
    GitSignsChange({ sym("@diff.delta") }),
    GitSignsDelete({ sym("@diff.minus") }),

    RenderMarkdownH1Bg({ sym("@markup.heading.1") }),
    RenderMarkdownH2Bg({ sym("@markup.heading.2") }),
    RenderMarkdownH3Bg({ sym("@markup.heading.3") }),
    RenderMarkdownH4Bg({ sym("@markup.heading.4") }),
    RenderMarkdownH5Bg({ sym("@markup.heading.5") }),
    RenderMarkdownH6Bg({ sym("@markup.heading.6") }),

    MiniDiffSignAdd({ sym("@diff.plus"), gui = "italic" }),
    MiniDiffSignChange({ sym("@diff.delta"), gui = "italic" }),
    MiniDiffSignDelete({ sym("@diff.minus"), gui = "italic" }),
    MiniStatuslineModeNormal({ bg = gpp.high, fg = gpp.text, gui = "bold" }),
    MiniStatuslineModeInsert({ bg = gpp.text, fg = gpp.base, gui = "bold" }),
    MiniStatuslineModeVisual({ bg = gpp.hollow, fg = gpp.base, gui = "bold" }),
    MiniStatuslineModeReplace({ bg = gpp.mihawk, fg = gpp.base, gui = "bold" }),
    MiniStatuslineModeCommand({ bg = gpp.kumashi, fg = gpp.base, gui = "bold" }),
    MiniStatuslineModeOther({ bg = gpp.garden, fg = gpp.base, gui = "bold" }),
    MiniStatuslineDevinfo({ bg = gpp.overlay, fg = gpp.text }),
    MiniStatuslineFilename({ bg = gpp.surface, fg = gpp.faint }),
    MiniStatuslineFileinfo({ MiniStatuslineDevinfo }),
    MiniStatuslineInactive({ bg = gpp.base, fg = gpp.muted }),
    MiniTablineCurrent({ TabLineSel }),
    MiniTablineVisible({ fg = gpp.sangria, bg = gpp.surface }),
    MiniTablineHidden({ TabLine }),

    TroubleIndent({ bg = gpp.surface, fg = gpp.faint }),
    TroublePos({ bg = gpp.surface, fg = gpp.faint }),
  }
end)
---@disagnostic disable
return theme
