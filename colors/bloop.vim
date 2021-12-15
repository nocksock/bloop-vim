" BLOOP Theme {{{
"
" https://github.com/nocksock/bloop
"
" }}}

" Init {{{
if exists("syntax_on")
 syntax reset
endif

hi clear

let g:colors_name = 'bloop'

" }}}

" Palette {{{

let s:fg = ['#F8F8F2', 7]
let s:cyan = ['#70F7C4', 159]
let s:green = ['#A2E568', 84]
let s:green_alt = ['#228876', 82]
let s:orange = ['#F8935A', 208]
let s:pink = ['#F38DB5', 212]
let s:purple = ['#773344', 96]
let s:red = ['#CA4E68', 203]
let s:yellow = ['#F7E480', 228]
let s:grey = ['#606C80', 242]
let s:grey_dark = ['#393455', 238]
let s:grey_darker = ['#222244', 235]
let s:accent = ['#C82763', 161]
let s:dim = ['#1C1A23', 235]
let s:hidden = ['#050505', 233]
let s:none = ['NONE', 'NONE']

" }}}

" Config Options {{{
" none atm
" }}}

" Helpers {{{
let s:attrs = {
      \ 'bold':'bold',
      \ 'italic':'italic',
      \ 'underline':'underline',
      \ 'undercurl':'undercurl',
      \ 'inverse':'inverse',
      \}

function! s:c(scope, fg, ...) 
  let l:bg = get(a:, 1, ['NONE', 'NONE'])
  let l:attr_list = filter(get(a:, 2, ['NONE']), 'type(v:val) == 1')
  let l:attrs = len(l:attr_list) > 0 ? join(l:attr_list, ',') : 'NONE'
  let l:special = get(a:, 3, ['NONE', 'NONE'])
  let l:hl_string = [
        \ 'highlight', a:scope,
        \ 'guifg=' . a:fg[0], 'ctermfg=' . a:fg[1],
        \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
        \ 'gui=' . l:attrs, 'cterm=' . l:attrs,
        \ 'guisp=' . l:special[0],
        \]

  execute join(l:hl_string, ' ')
endfunction
" }}}

" Defining Groups {{{

call s:c('BloopFg', s:fg)
call s:c('BloopFgBold', s:fg, s:none, [s:attrs.bold])
call s:c('BloopFgUnderline', s:fg, s:none, [s:attrs.underline])

call s:c('BloopCyan', s:cyan, s:none)
call s:c('BloopCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:c('BloopGreen', s:green)
call s:c('BloopGreenBold', s:green, s:none, [s:attrs.bold])
call s:c('BloopGreenItalic', s:green, s:none, [s:attrs.italic])
call s:c('BloopGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:c('BloopGreenAlt', s:green_alt, s:none, [s:attrs.bold, s:attrs.italic])

call s:c('BloopOrange', s:orange)
call s:c('BloopOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:c('BloopOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:c('BloopOrangeInverse', s:grey, s:orange)
call s:c('BloopOrangeItalic', s:orange, s:none, [s:attrs.italic])

call s:c('BloopPink', s:pink)
call s:c('BloopPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:c('BloopPurple', s:purple)
call s:c('BloopPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:c('BloopPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:c('BloopYellow', s:yellow)
call s:c('BloopYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:c('BloopRed', s:red)
call s:c('BloopRedInverse', s:fg, s:red)

call s:c('BloopGrey', s:grey, s:none)
call s:c('BloopGreyDark', s:grey_dark, s:none)
call s:c('BloopGreyInverse', s:grey, s:none, [s:attrs.inverse])
call s:c('BloopGreyDarkInverse', s:grey_dark, s:none, [s:attrs.inverse])
call s:c('BloopDim', s:dim)

call s:c('BloopAccent', s:accent, s:none)
call s:c('BloopAccentInverse', s:dim, s:accent)

call s:c('BloopNone', s:none, s:none)

" Semantics
call s:c('BloopComment', s:grey, s:none, [s:attrs.italic])
call s:c('BloopCommentBold', s:grey, s:none, [s:attrs.bold])

call s:c('BloopDiffChange', s:orange, s:none)
call s:c('BloopDiffDelete', s:accent, s:none)
call s:c('BloopDiffText', s:grey, s:orange)

call s:c('BloopError', s:accent, s:none, [], s:red)
call s:c('BloopErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)

call s:c('BloopInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)
call s:c('BloopLink', s:cyan, s:none, [s:attrs.underline])
call s:c('BloopSearch', s:accent, s:none, [s:attrs.inverse])
call s:c('BloopSelection', s:none, s:yellow)

call s:c('BloopNoise', s:grey_darker)
call s:c('BloopHidden', s:hidden, s:none)
call s:c('BloopTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:c('BloopWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)

" }}}

" UI Colors {{{

" E669 <- K here for a useable overview

set background=dark

call s:c('CursorLine', s:none, s:dim)
call s:c('Normal', s:fg, s:none )
call s:c('SignColumn', s:dim)
call s:c('StatusLine', s:grey, s:hidden )
call s:c('StatusLineNC', s:dim, s:hidden)
call s:c('StatusLineTerm', s:none, s:grey_dark, [s:attrs.bold])
call s:c('StatusLineTermNC', s:none, s:grey_dark)
call s:c('WildMenu', s:grey, s:purple, [s:attrs.bold])

hi! link Scrollbar BloopDim
hi! link LineNr BloopDim
hi! link CursorLineNr BloopYellow
hi! link ColorColumn BloopGreyDark
hi! link CursorColumn BloopYellow
hi! link MatchParen BloopCyanItalic
hi! link DiffAdd BloopGreen
hi! link DiffAdded DiffAdd
hi! link DiffChange BloopDiffChange
hi! link DiffDelete BloopDiffDelete
hi! link DiffRemoved DiffDelete
hi! link DiffText BloopDiffText
hi! link Directory BloopPurpleBold
hi! link ErrorMsg BloopRedInverse
hi! link FoldColumn BloopHidden
hi! link Folded BloopGreyDark
hi! link IncSearch BloopOrangeInverse
hi! link MoreMsg BloopFgBold
hi! link NonText BloopDim
hi! link Pmenu BloopGreyDark
hi! link PmenuSbar BloopGreyDark
hi! link PmenuSel BloopSelection
hi! link PmenuThumb BloopSelection
hi! link Question BloopFgBold
hi! link Search BloopSearch
hi! link TabLine BloopGreyDark
hi! link TabLineFill BloopGreyDark
hi! link TabLineSel Normal
hi! link Title BloopGreenBold
hi! link VertSplit BloopHidden
hi! link Visual BloopSelection
hi! link VisualNOS Visual
hi! link WarningMsg BloopOrangeInverse

" }}}

" Syntax {{{

" Generics {{{

hi! link Boolean Constant
hi! link Character BloopPink
hi! link Comment BloopComment
hi! link Conceal BloopDim
hi! link Constant BloopGreen
hi! link Debug BloopCyanItalic
hi! link Define BloopPink
hi! link Delimiter BloopFg
hi! link Error BloopError
hi! link Exception BloopRed
hi! link Float Constant
hi! link Function BloopOrange
hi! link Identifier BloopCyan
hi! link Include BloopPink
hi! link Keyword BloopCyanItalic
hi! link Macro BloopPink
hi! link Noise BloopNois
hi! link Number Constant
hi! link Operator BloopGreyDark
hi! link PreCondit BloopPink
hi! link PreProc BloopPink
hi! link Special BloopPink
hi! link SpecialComment BloopCyanItalic
hi! link SpecialKey BloopPink
hi! link SpellBad BloopErrorLine
hi! link SpellCap BloopInfoLine
hi! link SpellLocal BloopWarnLine
hi! link SpellRare BloopInfoLine
hi! link Statement BloopPink
hi! link String BloopGreen
hi! link Tag BloopCyan
hi! link Todo BloopTodo
hi! link Type BloopOrange
hi! link Typedef BloopGreen
hi! link Underlined BloopFgUnderline
hi! link helpBacktick Special
hi! link helpCommand BloopPurple
hi! link helpExample BloopGreen
hi! link helpHyperTextJump BloopLink

" }}}

" vim syntax {{{

hi! link vimUserFunc Function
hi! link vimUsrCommand Function

" }}}

" javascript syntax {{{

hi! link jsArrowFunction Operator
hi! link jsBrackets BloopNoise
hi! link jsBuiltins BloopCyan
hi! link jsClassDefinition BloopCyan
hi! link jsClassMethodType Keyword
hi! link jsDestructuringAssignment BloopOrangeItalic
hi! link jsDocParam BloopOrangeItalic
hi! link jsDocTags Keyword
hi! link jsDocType Type
hi! link jsDocTypeBrackets BloopCyan
hi! link jsFuncArgOperator Operator
hi! link jsFuncArgs BloopOrangeItalic
hi! link jsFuncParens BloopNoise
hi! link jsFunction Keyword
hi! link jsGlobalObjects BloopYellowItalic
hi! link jsNull Constant
hi! link jsObjectBraces BloopGrey
hi! link jsObjectColon BloopNoise
hi! link jsObjectValue BloopGreen
hi! link jsObjectProp Keyword
hi! link jsParen BloopPink
hi! link jsParens BloopNoise
hi! link jsReturn BloopAccent
hi! link jsSpecial BloopGreenAlt
hi! link jsStorageClass BloopPurple
hi! link jsSuper BloopPurpleItalic
hi! link jsTemplateBraces Special
hi! link jsThis BloopPurpleItalic
hi! link jsUndefined Constant

" jsx
hi! link jsxAttrib BloopPink
hi! link jsxBraces BloopGreyDark
hi! link jsxClosePunct BloopGreyDark
hi! link jsxCloseString BloopNoise
hi! link jsxCloseTag BloopPurpleItalic
hi! link jsxComponentName BloopOrangeItalic
hi! link jsxOpenPunct BloopGreyDark
hi! link jsxTag BloopOrange
hi! link jsxTagName Keyword
hi! link jsxTagName BloopAccent

" }}}

" }}}

