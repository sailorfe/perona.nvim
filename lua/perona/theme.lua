local lush = require("lush")
local hsl = lush.hsl

-- base colors
local base = hsl(324, 24, 14)
local surface = hsl(324, 24, 18)
local overlay = hsl(324, 24, 22)
-- text colors
local muted = hsl(324, 12, 48)
local faint = hsl(324, 20, 60)
local text = hsl(324, 48, 90)
local light = hsl(324, 96, 96)
-- accent colors
local dracule = hsl(348, 60, 60)
local marimo = hsl(148, 60, 72)
local takanome = hsl(36, 72, 72)
local kumashi = hsl(212, 72, 72)
local garden = hsl(288, 72, 72)
local hollow = hsl(324, 72, 72)
-- highlights
local low = hsl(324, 18, 16)
local med = hsl(324, 16, 24)
local high = hsl(324, 14, 36)

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
		CursorLineNr({ fg = hollow, gui = "bold" }),
		LineNr({ fg = muted }),
		LineNrAbove({ LineNr }),
		LineNrBelow({ LineNr }),

		SignColumn({ bg = surface }),
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
		PmenuKind({ bg = surface, fg = garden }),
		PmenuKindSel({ bg = overlay, fg = garden, gui = "bold" }),
		PmenuExtra({ bg = surface, fg = muted }),
		PmenuExtraSel({ bg = overlay, fg = faint }),
		PmenuSbar({ bg = overlay }),
		PmenuThumb({ bg = high }),
		PmenuMatch({ fg = hollow, gui = "bold" }), -- 0.11 fuzzy match
		PmenuMatchSel({ fg = hollow, gui = "bold,underline" }),

		-- 0.11: popup/window title when using noice / native cmdline
		MsgArea({ fg = text }),
		MsgSeparator({ fg = overlay }),
		ModeMsg({ fg = hollow, gui = "bold" }),
		MoreMsg({ fg = marimo }),
		Question({ fg = kumashi }),
		WarningMsg({ fg = takanome }),
		ErrorMsg({ fg = dracule }),

		Cursor({ bg = text, fg = base }),
		lCursor({ Cursor }),
		CursorIM({ Cursor }),
		TermCursor({ bg = hollow, fg = base }),
		TermCursorNC({ bg = faint, fg = base }),

		Visual({ bg = hollow, fg = base }),
		VisualNOS({ Visual }),
		CurSearch({ bg = takanome, fg = base }),
		IncSearch({ CurSearch }),
		Search({ bg = med, fg = takanome }),
		Substitute({ bg = kumashi, fg = base }),

		MatchParen({ bg = high, gui = "bold" }),

		NonText({ fg = muted }),
		Whitespace({ fg = high }),
		SpecialKey({ fg = muted }),
		EndOfBuffer({ fg = faint }),

		Directory({ fg = kumashi }),
		Title({ fg = hollow, gui = "bold" }),
		WildMenu({ bg = text, fg = base }),

		QuickFixLine({ bg = overlay, gui = "bold" }),

		-- Diffs
		DiffAdd({ bg = marimo, fg = base }),
		DiffChange({ bg = muted, fg = base }),
		DiffDelete({ fg = dracule, gui = "bold" }),
		DiffText({ bg = kumashi, fg = base }),

		-- Spell
		SpellBad({ fg = dracule, gui = "undercurl" }),
		SpellCap({ fg = takanome, gui = "undercurl" }),
		SpellLocal({ fg = marimo, gui = "undercurl" }),
		SpellRare({ fg = kumashi, gui = "undercurl" }),

		-- Misc
		Underlined({ gui = "underline" }),
		Ignore({ fg = muted }),
		Error({ bg = dracule, fg = light }),
		Todo({ fg = takanome, gui = "bold" }),

		-- traditional syntax
		Comment({ fg = faint, gui = "italic" }),

		Constant({ fg = marimo }),
		String({ fg = garden }),
		Character({ Constant }),
		Number({ Constant }),
		Boolean({ Constant }),
		Float({ Constant }),

		Identifier({ fg = garden }),
		Function({ fg = hollow }),

		Statement({ fg = kumashi }),
		Conditional({ Statement }),
		Repeat({ Statement }),
		Label({ Statement }),
		Operator({ fg = text }),
		Keyword({ fg = kumashi, gui = "italic" }),
		Exception({ Statement }),

		PreProc({ fg = takanome }),
		Include({ PreProc }),
		Define({ PreProc }),
		Macro({ PreProc }),
		PreCondit({ PreProc }),

		Type({ fg = marimo }),
		StorageClass({ Type }),
		Structure({ Type }),
		Typedef({ Type }),

		Special({ fg = hollow }),
		SpecialChar({ Special }),
		Tag({ Special }),
		Delimiter({ fg = text }),
		SpecialComment({ fg = faint, gui = "bold" }),
		Debug({ Special }),

		-- diagonistics
		DiagnosticError({ fg = dracule }),
		DiagnosticWarn({ fg = takanome }),
		DiagnosticInfo({ fg = kumashi }),
		DiagnosticHint({ fg = hollow }),
		DiagnosticOk({ fg = marimo }),

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
		sym("@variable")({ fg = hollow }), -- would love to change this
		sym("@variable.builtin")({ fg = hollow, gui = "italic" }),
		sym("@variable.parameter")({ fg = faint }),
		sym("@variable.member")({ fg = text }), -- struct fields, object keys

		sym("@constant")({ Constant }),
		sym("@constant.builtin")({ fg = marimo, gui = "italic" }),
		sym("@constant.macro")({ Define }),

		sym("@module")({ fg = takanome }),
		sym("@module.builtin")({ fg = takanome, gui = "italic" }),
		sym("@label")({ fg = kumashi }),

		-- literals
		sym("@string")({ String }),
		sym("@string.escape")({ fg = hollow }),
		sym("@string.special")({ fg = hollow }),
		sym("@string.regexp")({ fg = takanome }),
		sym("@string.special.url")({ fg = kumashi, gui = "underline" }),

		sym("@character")({ Character }),
		sym("@character.special")({ SpecialChar }),
		sym("@boolean")({ Boolean }),
		sym("@number")({ Number }),
		sym("@number.float")({ Float }),

		-- types
		sym("@type")({ Type }),
		sym("@type.builtin")({ fg = marimo, gui = "italic" }),
		sym("@type.definition")({ Typedef }),

		-- functions
		sym("@function")({ Function }),
		sym("@function.builtin")({ fg = garden, gui = "italic" }),
		sym("@function.macro")({ Macro }),
		sym("@function.method")({ Function }),
		sym("@constructor")({ fg = hollow }),

		-- keywords
		sym("@keyword")({ Keyword }),
		sym("@keyword.function")({ fg = kumashi, gui = "italic" }),
		sym("@keyword.operator")({ fg = kumashi }),
		sym("@keyword.import")({ Include }),
		sym("@keyword.repeat")({ Repeat }),
		sym("@keyword.return")({ fg = dracule, gui = "italic" }),
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
		sym("@comment.error")({ fg = dracule, gui = "bold" }),
		sym("@comment.warning")({ fg = takanome, gui = "bold" }),
		sym("@comment.todo")({ fg = takanome, gui = "bold" }),
		sym("@comment.note")({ fg = kumashi, gui = "bold" }),

		-- markup (markdown, rst, etc.)
		sym("@markup.raw")({ fg = marimo }),
		sym("@markup.raw.block")({ fg = marimo }),
		sym("@markup.link")({ fg = kumashi, gui = "underline" }),
		sym("@markup.link.url")({ fg = kumashi, gui = "underline,italic" }),
		sym("@markup.link.label")({ fg = hollow }),
		sym("@markup.list")({ fg = takanome }),
		sym("@markup.heading")({ fg = hollow, gui = "bold" }),
		sym("@markup.heading.1")({ fg = hollow, gui = "bold" }),
		sym("@markup.heading.2")({ fg = garden, gui = "bold" }),
		sym("@markup.heading.3")({ fg = dracule, gui = "bold" }),
		sym("@markup.heading.4")({ fg = kumashi, gui = "bold" }),
		sym("@markup.strong")({ gui = "bold" }),
		sym("@markup.italic")({ gui = "italic" }),
		sym("@markup.strikethrough")({ gui = "strikethrough", fg = muted }),
		sym("@markup.quote")({ fg = faint, gui = "italic" }),

		-- misc TS
		sym("@operator")({ Operator }),
		sym("@attribute")({ fg = takanome }),
		sym("@attribute.builtin")({ fg = takanome, gui = "italic" }),
		sym("@property")({ fg = hollow }), -- would love to change this
		sym("@tag")({ fg = kumashi }),
		sym("@tag.builtin")({ fg = kumashi, gui = "italic" }),
		sym("@tag.attribute")({ fg = takanome }),
		sym("@tag.delimiter")({ fg = muted }),

		sym("@diff.plus")({ fg = marimo }),
		sym("@diff.minus")({ fg = dracule }),
		sym("@diff.delta")({ fg = takanome }),

		-- LSP semantic tokens (0.9+)
		sym("@lsp.type.class")({ fg = marimo }),
		sym("@lsp.type.decorator")({ fg = takanome }),
		sym("@lsp.type.enum")({ fg = marimo }),
		sym("@lsp.type.enumMember")({ Constant }),
		sym("@lsp.type.function")({ Function }),
		sym("@lsp.type.interface")({ fg = marimo, gui = "italic" }),
		sym("@lsp.type.macro")({ Macro }),
		sym("@lsp.type.method")({ Function }),
		sym("@lsp.type.namespace")({ fg = takanome }),
		sym("@lsp.type.parameter")({ fg = faint }),
		sym("@lsp.type.property")({ fg = text }),
		sym("@lsp.type.struct")({ Structure }),
		sym("@lsp.type.type")({ Type }),
		sym("@lsp.type.typeParameter")({ fg = marimo, gui = "italic" }),
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
		GitSignsAdd({ fg = marimo }),
		GitSignsChange({ fg = garden }),
		GitSignsDelete({ fg = dracule }),

		RenderMarkdownH1Bg({ bg = surface, fg = hollow, gui = "bold" }),
		RenderMarkdownH2Bg({ bg = surface, fg = garden, gui = "bold" }),
		RenderMarkdownH3Bg({ bg = surface, fg = dracule, gui = "bold" }),
		RenderMarkdownH4Bg({ bg = surface, fg = kumashi, gui = "bold" }),
		RenderMarkdownH5Bg({ bg = surface, fg = takanome, gui = "bold" }),
		RenderMarkdownH6Bg({ bg = surface, fg = marimo, gui = "bold" }),

		MiniDiffSignAdd({ fg = marimo, gui = "italic" }),
		MiniDiffSignChange({ fg = kumashi, gui = "italic" }),
		MiniDiffSignDelete({ fg = dracule, gui = "italic" }),
		MiniStatuslineModeNormal({ bg = overlay, fg = text }),
		MiniStatuslineModeInsert({ bg = text, fg = base }),
		MiniStatuslineModeVisual({ bg = hollow, fg = base }),
		MiniStatuslineModeReplace({ bg = dracule, fg = base }),
		MiniStatuslineModeCommand({ bg = kumashi, fg = base }),
		MiniStatuslineModeOther({ bg = marimo, fg = base }),
		MiniStatuslineDevinfo({ bg = surface, fg = text }),
		MiniStatuslineFilename({ bg = base, fg = faint }),
		MiniStatuslineFileinfo({ MiniStatuslineDevinfo }),
		MiniStatuslineInactive({ bg = base, fg = muted }),
		MiniTablineCurrent({ TabLineSel }),
		MiniTablineVisible({ fg = takanome, bg = surface }),
		MiniTablineHidden({ TabLine }),

		TroubleIndent({ bg = surface, fg = faint }),
		TroublePos({ bg = surface, fg = faint }),
	}
end)

return theme

-- vi:nowrap
