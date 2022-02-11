let s:fg          = g:bloop#palette.fg
let s:cyan        = g:bloop#palette.cyan
let s:green       = g:bloop#palette.green
let s:green_alt   = g:bloop#palette.green_alt
let s:orange      = g:bloop#palette.orange
let s:pink        = g:bloop#palette.pink
let s:purple      = g:bloop#palette.purple
let s:red         = g:bloop#palette.red
let s:yellow      = g:bloop#palette.yellow
let s:grey        = g:bloop#palette.grey
let s:grey_dark   = g:bloop#palette.grey_dark
let s:grey_darker = g:bloop#palette.grey_darker
let s:accent      = g:bloop#palette.accent
let s:dim         = g:bloop#palette.dim
let s:hidden      = g:bloop#palette.hidden
let s:black       = g:bloop#palette.black
let s:none        = g:bloop#palette.none


" TODO move this into the autoload file. But I'd need to move the palette into
" a global thing as well.

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [s:green_alt, s:green, 'bold' ], [ s:grey, s:grey_darker ] ]
let s:p.normal.right = [ [s:grey_dark, s:none, 'bold' ], [ s:grey, s:none ] ]
let s:p.normal.middle = [ [s:grey_dark, s:none] ]

let s:p.insert.left = [ [s:dim, s:cyan ], [ s:grey, s:grey_dark ] ]
let s:p.visual.left = [ [s:dim, s:yellow, 'bold' ], [ s:grey, s:grey_dark ] ]
let s:p.replace.left = [ [s:dim, s:red, 'bold' ], [ s:grey, s:dim ] ]
let s:p.inactive.left = [ [s:grey, s:grey_dark ], [ s:dim, s:grey_dark]]

let s:p.tabline.tabsel = [ [s:cyan, s:grey_darker ] ]
let s:p.tabline.left = [ [s:grey_darker, s:none ] ]

let g:lightline#colorscheme#bloop#palette = lightline#colorscheme#flatten(s:p)

