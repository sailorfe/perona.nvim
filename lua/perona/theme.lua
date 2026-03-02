local lush = require("lush")
local hsl = lush.hsl

-- base colors
local base = hsl(324, 24, 12)
local surface = hsl(324, 24, 16)
local overlay = hsl(324, 24, 20)
-- text colors
local muted = hsl(324, 12, 48)
local faint = hsl(324, 20, 60)
local text = hsl(324, 48, 88)
local light = hsl(324, 96, 96)
-- accent colors
local mihawk = hsl(348, 60, 54)
local garden = hsl(288, 60, 72)
local sangria = hsl(360, 60, 72)
local kumashi = hsl(216, 60, 72)
local zombie = hsl(336, 60, 60)
local hollow = hsl(324, 60, 72)
-- highlights
local low = hsl(324, 18, 16)
local med = hsl(324, 16, 24)
local high = hsl(324, 14, 32)

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {

		-- ui
		Normal({ bg = base, fg = text }),
		NormalFloat({ bg = surface, fg = text }),
		NormalNC({ bg = base, fg = faint }),

		FloatBorder({ bg = surface, fg = muted }),
		FloatTitle({ bg = surface, fg = hollow, gui = "bold" }),
		FloatFooter({ FloatBorder }),

		ColorColumn({ bg = surface }),
		Conceal({ fg = muted }),
		CursorLine({ bg = overlay }),
		CursorColumn({ bg = overlay }),
		CursorLineNr({ fg = text, gui = "bold" }),
		LineNr({ fg = muted }),
		LineNrAbove({ LineNr }),
		LineNrBelow({ LineNr }),

		SignColumn({ bg = base }),
		FoldColumn({ fg = high, bg = surface }),
		Folded({ bg = low, fg = faint }),

		StatusLine({ bg = overlay, fg = text }),
		StatusLineNC({ bg = surface, fg = muted }),
		WinBar({ bg = med, fg = faint }),
		WinBarNC({ bg = med, fg = muted }),
		WinSeparator({ fg = surface }), -- 0.9+
		VertSplit({ fg = surface }), -- for compatibility

		TabLine({ bg = surface, fg = muted }),
		TabLineFill({ bg = base }),
		TabLineSel({ bg = overlay, fg = hollow, gui = "bold" }),

		Pmenu({ bg = surface, fg = text }),
		PmenuSel({ bg = overlay, fg = hollow, gui = "bold" }),
		PmenuKind({ bg = surface, fg = zombie }),
		PmenuKindSel({ bg = overlay, fg = zombie, gui = "bold" }),
		PmenuExtra({ bg = surface, fg = muted }),
		PmenuExtraSel({ bg = overlay, fg = faint }),
		PmenuSbar({ bg = overlay }),
		PmenuThumb({ bg = high }),
		PmenuMatch({ fg = hollow, gui = "bold" }), -- 0.11 fuzzy match
		PmenuMatchSel({ fg = hollow, gui = "bold,underline" }),

		-- 0.11: popup/window title when using noice / native cmdline
		MsgArea({ fg = text }),
		MsgSeparator({ fg = overlay }),
		ModeMsg({ fg = text, gui = "bold" }),
		MoreMsg({ fg = garden }),
		Question({ fg = kumashi }),
		WarningMsg({ fg = sangria }),
		ErrorMsg({ fg = mihawk, gui = "bold" }),

		Cursor({ bg = text, fg = base }),
		lCursor({ Cursor }),
		CursorIM({ Cursor }),
		TermCursor({ bg = hollow, fg = base }),
		TermCursorNC({ bg = faint, fg = base }),

		Visual({ bg = hollow, fg = base }),
		VisualNOS({ Visual }),
		CurSearch({ bg = sangria, fg = base }),
		IncSearch({ CurSearch }),
		Search({ bg = med, fg = sangria }),
		Substitute({ bg = kumashi, fg = base }),

		MatchParen({ bg = high, gui = "bold" }),

		NonText({ fg = muted }),
		Whitespace({ fg = overlay }),
		SpecialKey({ fg = muted }),
		EndOfBuffer({ fg = faint }),

		Directory({ fg = kumashi }),
		Title({ fg = hollow, gui = "bold" }),
		WildMenu({ bg = text, fg = base }),

		QuickFixLine({ bg = overlay, gui = "bold" }),

		-- diffs
		DiffAdd({ bg = garden, fg = base }),
		DiffChange({ bg = muted, fg = base }),
		DiffDelete({ fg = mihawk, gui = "bold" }),
		DiffText({ bg = kumashi, fg = base }),

		-- spell
		SpellBad({ fg = mihawk, gui = "undercurl" }),
		SpellCap({ fg = sangria, gui = "undercurl" }),
		SpellLocal({ fg = garden, gui = "undercurl" }),
		SpellRare({ fg = kumashi, gui = "undercurl" }),

		-- misc
		Underlined({ gui = "underline" }),
		Ignore({ fg = muted }),
		Error({ bg = mihawk, fg = light }),
		Todo({ fg = sangria, gui = "bold" }),

		-- traditional syntax
		Comment({ fg = faint, gui = "italic" }),

		Constant({ fg = sangria }),
		String({ Constant }), -- maybe change
		Character({ Constant }),
		Number({ Constant }),
		Boolean({ Constant }),
		Float({ Constant }),

		Identifier({ fg = zombie }),
		Function({ fg = hollow }),

		Statement({ fg = kumashi, gui = "bold" }),
		Conditional({ Statement }),
		Repeat({ Statement }),
		Label({ Statement }),
		Operator({ fg = text }),
		Keyword({ Statement }), -- maybe change
		Exception({ Statement }),

		PreProc({ fg = kumashi }),
		Include({ PreProc }),
		Define({ PreProc }),
		Macro({ PreProc }),
		PreCondit({ PreProc }),

		Type({ fg = garden }),
		StorageClass({ Type }),
		Structure({ Type }),
		Typedef({ fg = garden, gui = "italic" }),

		Special({ fg = zombie }),
		SpecialChar({ Special }),
		Tag({ Special }),
		Delimiter({ fg = text }),
		SpecialComment({ fg = faint, gui = "bold" }),
		Debug({ Special }),

		-- diagonistics
		DiagnosticError({ fg = mihawk }),
		DiagnosticWarn({ fg = sangria }),
		DiagnosticInfo({ fg = kumashi }),
		DiagnosticHint({ fg = hollow }),
		DiagnosticOk({ fg = garden }),

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
		DiagnosticDeprecated({ gui = "strikethrough", fg = muted }),

		-- treesitter (0.9+)

		-- identifiers
		sym("@variable")({ fg = text, gui = "italic" }),
		sym("@variable.builtin")({ fg = hollow, gui = "italic" }),
		sym("@variable.parameter")({ Type }), -- (injected_functions)
		sym("@variable.member")({ fg = text }), -- struct fields, object keys

		sym("@constant")({ Constant }),
		sym("@constant.builtin")({ Typedef }),
		sym("@constant.macro")({ Define }),

		sym("@module")({ fg = sangria }),
		sym("@module.builtin")({ fg = sangria, gui = "italic" }),
		sym("@label")({ fg = kumashi }),

		-- literals
		sym("@string")({ String }),
		sym("@string.escape")({ fg = hollow }),
		sym("@string.special")({ fg = hollow }),
		sym("@string.regexp")({ fg = sangria }),
		sym("@string.special.url")({ fg = kumashi, gui = "underline" }),

		sym("@character")({ Character }),
		sym("@character.special")({ SpecialChar }),
		sym("@boolean")({ Boolean }),
		sym("@number")({ Number }),
		sym("@number.float")({ Float }),

		-- types
		sym("@type")({ Type }),
		sym("@type.builtin")({ Typedef }),
		sym("@type.definition")({ Typedef }),

		-- functions
		sym("@function")({ Function }),
		sym("@function.builtin")({ fg = zombie, gui = "italic" }),
		sym("@function.macro")({ Macro }),
		sym("@function.method")({ Function }),
		sym("@constructor")({ fg = hollow }),

		-- keywords
		sym("@keyword")({ Keyword }),
		sym("@keyword.function")({ fg = kumashi, gui = "italic" }),
		sym("@keyword.operator")({ fg = kumashi }),
		sym("@keyword.import")({ Include }),
		sym("@keyword.repeat")({ Repeat }),
		sym("@keyword.return")({ fg = mihawk, gui = "italic" }),
		sym("@keyword.exception")({ Exception }),
		sym("@keyword.conditional")({ Conditional }),
		sym("@keyword.directive")({ PreProc }),

		-- punctuation
		sym("@punctuation.delimiter")({ fg = muted }),
		sym("@punctuation.bracket")({ fg = text }),
		sym("@punctuation.special")({ fg = hollow }),

		-- comments
		sym("@comment")({ Comment }),
		sym("@comment.documentation")({ fg = faint, gui = "italic" }),
		sym("@comment.error")({ fg = mihawk, gui = "bold" }),
		sym("@comment.warning")({ fg = sangria, gui = "bold" }),
		sym("@comment.todo")({ fg = sangria, gui = "bold" }),
		sym("@comment.note")({ fg = kumashi, gui = "bold" }),

		-- markup (markdown, rst, etc.)
		sym("@markup.raw")({ fg = garden }),
		sym("@markup.raw.block")({ fg = garden }),
		sym("@markup.link")({ fg = kumashi, gui = "underline" }),
		sym("@markup.link.url")({ fg = kumashi, gui = "underline,italic" }),
		sym("@markup.link.label")({ fg = hollow }),
		sym("@markup.list")({ fg = sangria }),
		sym("@markup.heading")({ fg = hollow, gui = "bold" }),
		sym("@markup.heading.1")({ bg = hollow.darken(60).desaturate(60), fg = hollow, gui = "bold" }),
		sym("@markup.heading.2")({ bg = sangria.darken(60).desaturate(60), fg = sangria, gui = "bold" }),
		sym("@markup.heading.3")({ bg = garden.darken(60).desaturate(60), fg = garden, gui = "bold" }),
		sym("@markup.heading.4")({ bg = zombie.darken(60).desaturate(60), fg = zombie, gui = "bold" }),
		sym("@markup.strong")({ gui = "bold" }),
		sym("@markup.italic")({ gui = "italic" }),
		sym("@markup.strikethrough")({ gui = "strikethrough", fg = muted }),
		sym("@markup.quote")({ fg = faint, gui = "italic" }),

		-- misc TS
		sym("@operator")({ Operator }),
		sym("@attribute")({ fg = sangria }),
		sym("@attribute.builtin")({ fg = sangria, gui = "italic" }),
		sym("@property")({ fg = hollow, gui = "italic" }), -- would love to change this
		sym("@tag")({ fg = kumashi }),
		sym("@tag.builtin")({ fg = kumashi, gui = "italic" }),
		sym("@tag.attribute")({ fg = sangria }),
		sym("@tag.delimiter")({ fg = muted }),

		sym("@diff.plus")({ fg = kumashi }),
		sym("@diff.minus")({ fg = mihawk }),
		sym("@diff.delta")({ fg = hollow }),

		-- LSP semantic tokens (0.9+)
		sym("@lsp.type.class")({ Type }),
		sym("@lsp.type.decorator")({ fg = sangria }),
		sym("@lsp.type.enum")({ Type }),
		sym("@lsp.type.enumMember")({ Constant }),
		sym("@lsp.type.function")({ Function }),
		sym("@lsp.type.interface")({ Typedef }),
		sym("@lsp.type.macro")({ Macro }),
		sym("@lsp.type.method")({ Function }),
		sym("@lsp.type.namespace")({ fg = text, gui = "italic" }),
		sym("@lsp.type.parameter")({ fg = zombie, gui = "italic" }),
		sym("@lsp.type.property")({ fg = text }),
		sym("@lsp.type.struct")({ Structure }),
		sym("@lsp.type.type")({ Type }),
		sym("@lsp.type.typeParameter")({ Typedef }),
		sym("@lsp.type.variable")({ fg = text }),
		sym("@lsp.type.keyword")({ Keyword }),
		sym("@lsp.type.comment")({ Comment }),
		sym("@lsp.type.string")({ String }),
		sym("@lsp.type.number")({ Number }),
		sym("@lsp.type.operator")({ Operator }),

		sym("@lsp.mod.deprecated")({ gui = "strikethrough", fg = muted }),
		sym("@lsp.mod.readonly")({ gui = "italic" }),
		sym("@lsp.mod.defaultLibrary")({ gui = "italic" }),

		-- plugins
		GitSignsAdd({ fg = kumashi }),
		GitSignsChange({ fg = hollow }),
		GitSignsDelete({ fg = mihawk }),

		RenderMarkdownH1Bg({ bg = hollow.darken(60).desaturate(60), fg = hollow, gui = "bold" }),
		RenderMarkdownH2Bg({ bg = sangria.darken(60).desaturate(60), fg = sangria, gui = "bold" }),
		RenderMarkdownH3Bg({ bg = garden.darken(60).desaturate(60), fg = garden, gui = "bold" }),
		RenderMarkdownH4Bg({ bg = zombie.darken(60).desaturate(60), fg = zombie, gui = "bold" }),
		RenderMarkdownH5Bg({ bg = kumashi.darken(60).desaturate(60), fg = kumashi, gui = "bold" }),
		RenderMarkdownH6Bg({ bg = mihawk.darken(60).desaturate(60), fg = mihawk, gui = "bold" }),

		MiniDiffSignAdd({ fg = kumashi, gui = "italic" }),
		MiniDiffSignChange({ fg = hollow, gui = "italic" }),
		MiniDiffSignDelete({ fg = mihawk, gui = "italic" }),
		MiniStatuslineModeNormal({ bg = high, fg = text, gui = "bold" }),
		MiniStatuslineModeInsert({ bg = text, fg = base, gui = "bold" }),
		MiniStatuslineModeVisual({ bg = hollow, fg = base, gui = "bold" }),
		MiniStatuslineModeReplace({ bg = mihawk, fg = base, gui = "bold" }),
		MiniStatuslineModeCommand({ bg = kumashi, fg = base, gui = "bold" }),
		MiniStatuslineModeOther({ bg = garden, fg = base, gui = "bold" }),
		MiniStatuslineDevinfo({ bg = overlay, fg = text }),
		MiniStatuslineFilename({ bg = surface, fg = faint }),
		MiniStatuslineFileinfo({ MiniStatuslineDevinfo }),
		MiniStatuslineInactive({ bg = base, fg = muted }),
		MiniTablineCurrent({ TabLineSel }),
		MiniTablineVisible({ fg = sangria, bg = surface }),
		MiniTablineHidden({ TabLine }),

		TroubleIndent({ bg = surface, fg = faint }),
		TroublePos({ bg = surface, fg = faint }),
	}
end)

return theme

-- vi:nowrap
