"
" just some helpers to keep the config clean
"

function! SynInfo()
  let l:s = synID(line('.'), col('.'), 1)
  echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfun

nnoremap zS :call SynInfo()<cr>
