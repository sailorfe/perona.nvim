"
" ▄▄▄·▄▄▄ .▄▄▄         ▐ ▄  ▄▄▄· 
"▐█ ▄█▀▄.▀·▀▄ █·▪     •█▌▐█▐█ ▀█ 
" ██▀·▐▀▀▪▄▐▀▀▄  ▄█▀▄ ▐█▐▐▌▄█▀▀█ 
"▐█▪·•▐█▄▄▌▐█•█▌▐█▌.▐▌██▐█▌▐█ ▪▐▌
".▀    ▀▀▀ .▀  ▀ ▀█▄▀▪▀▀ █▪ ▀  ▀ 
"
hi clear
syntax reset
set background=dark
set t_Co=256
let g:colors_name='perona'

highlight Normal guifg=#FEC8D5 guibg=#0C030A guisp=NONE blend=NONE gui=NONE
highlight ColorColumn guifg=NONE guibg=#150A12 guisp=NONE blend=NONE gui=NONE
highlight Comment guifg=#A28189 guibg=NONE guisp=NONE blend=NONE gui=italic
highlight Conditional guifg=#FF5C74 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight! link Label Conditional
highlight Constant guifg=#D573D9 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight CurSearch guifg=#342731 guibg=#FA5C8E guisp=NONE blend=NONE gui=NONE
highlight Cursor guifg=#0C030A guibg=#FEC8D5 guisp=NONE blend=NONE gui=NONE
highlight! link TermCursor Cursor
highlight! link Visual Cursor
highlight CursorColumn guifg=NONE guibg=#1C111A guisp=NONE blend=NONE gui=NONE
highlight CursorLine guifg=NONE guibg=#1C111A guisp=NONE blend=NONE gui=NONE
highlight CursorLineNr guifg=#8896C8 guibg=NONE guisp=NONE blend=NONE gui=bold
highlight Debug guifg=#FF5C74 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Define guifg=#FF5C74 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link Macro Define
highlight Delimiter guifg=#FF5C74 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticError guifg=#ED1D2E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticHint guifg=#A9B7EA guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticInfo guifg=#FA5C8E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticOk guifg=#F893FB guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiagnosticUnderlineError guifg=#ED1D2E guibg=NONE guisp=NONE blend=NONE gui=underline
highlight DiagnosticUnderlineHint guifg=#A9B7EA guibg=NONE guisp=NONE blend=NONE gui=underline
highlight DiagnosticUnderlineInfo guifg=#FA5C8E guibg=NONE guisp=NONE blend=NONE gui=underline
highlight DiagnosticUnderlineOk guifg=#F893FB guibg=NONE guisp=NONE blend=NONE gui=underline
highlight DiagnosticUnderlineWarn guifg=#FF8093 guibg=NONE guisp=NONE blend=NONE gui=underline
highlight DiagnosticWarn guifg=#FF8093 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight DiffAdd guifg=#0C030A guibg=#D573D9 guisp=NONE blend=NONE gui=NONE
highlight DiffChange guifg=#0C030A guibg=#FF5C74 guisp=NONE blend=NONE gui=NONE
highlight DiffDelete guifg=#0C030A guibg=#FF4D5B guisp=NONE blend=NONE gui=NONE
highlight DiffText guifg=#FF4D5B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Directory guifg=#FF70B3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Error guifg=#0C030A guibg=#ED1D2E guisp=NONE blend=NONE gui=NONE
highlight ErrorMsg guifg=#ED1D2E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Exception guifg=#ED1D2E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Function guifg=#A9B7EA guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Identifier guifg=#8896C8 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight IncSearch guifg=#0C030A guibg=#FF5C74 guisp=NONE blend=NONE gui=NONE
highlight Include guifg=#FF70B3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Keyword guifg=#D573D9 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight LineNr guifg=#150A12 guibg=#932546 guisp=NONE blend=NONE gui=NONE
highlight LineNrAbove guifg=#A28189 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight! link LineNrBelow LineNrAbove
highlight MatchParen guifg=#160813 guibg=#FF8093 guisp=NONE blend=NONE gui=bold
highlight ModeMsg guifg=#F893FB guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight MoreMsg guifg=#FF5C74 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight NonText guifg=#F893FB guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Number guifg=#FF5C74 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Operator guifg=#D5396B guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Pmenu guifg=#FEC8D5 guibg=#1C111A guisp=NONE blend=NONE gui=NONE
highlight PmenuSel guifg=#D573D9 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PreCondit guifg=#FF8093 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight PreProc guifg=#ED1D2E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Question guifg=#FA5C8E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight QuickFixLine guifg=#FA5C8E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Repeat guifg=#D573D9 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Search guifg=#1C111A guibg=#F893FB guisp=NONE blend=NONE gui=NONE
highlight SignColumn guifg=NONE guibg=#0C030A guisp=NONE blend=NONE gui=NONE
highlight Special guifg=#FF5C74 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpecialChar guifg=#FF5C74 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight SpellBad guifg=#0C030A guibg=#ED1D2E guisp=NONE blend=NONE gui=underline
highlight SpellCap guifg=#0C030A guibg=#FF5C74 guisp=NONE blend=NONE gui=underline
highlight SpellLocal guifg=#0C030A guibg=#D573D9 guisp=NONE blend=NONE gui=underline
highlight SpellRare guifg=#0C030A guibg=#8896C8 guisp=NONE blend=NONE gui=underline
highlight Statement guifg=#D5396B guibg=NONE guisp=NONE blend=NONE gui=bold
highlight StatusLine guifg=#F2C0CB guibg=#62182F guisp=NONE blend=NONE gui=bold
highlight StatusLineNC guifg=#A28189 guibg=#150A12 guisp=NONE blend=NONE gui=NONE
highlight StorageClass guifg=#FF70B3 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight String guifg=#FF5C74 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Substitute guifg=#342731 guibg=#FF8093 guisp=NONE blend=NONE gui=NONE
highlight TabLine guifg=#A28189 guibg=#1C111A guisp=NONE blend=NONE gui=NONE
highlight TabLineFill guifg=NONE guibg=#1C111A guisp=NONE blend=NONE gui=NONE
highlight Tag guifg=#FF5C74 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight TermCursorNC guifg=#FEC8D5 guibg=#62182F guisp=NONE blend=NONE gui=NONE
highlight Title guifg=#FEC8D5 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Todo guifg=#FF5C74 guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Type guifg=#ED1D2E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Underlined guifg=#FCD9E1 guibg=NONE guisp=NONE blend=NONE gui=underline
highlight WarningMsg guifg=#ED1D2E guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight Winseparator guifg=#62182F guibg=NONE guisp=NONE blend=NONE gui=NONE
highlight @variable guifg=#FEC8D5 guibg=NONE guisp=NONE blend=NONE gui=NONE
