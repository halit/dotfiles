" My tweaks to the tir_black theme
"hi Normal guibg=#232323 ctermbg=235
"hi NonText guifg=#3F3F3F guibg=NONE ctermbg=NONE ctermfg=239

"hi Directory term=bold guifg=#88AFD1 ctermfg=159

"hi LineNr guibg=darkgray ctermbg=244 ctermfg=238
hi LineNr guifg=yellow guibg=darkgray ctermbg=244 ctermfg=238
"hi VertSplit ctermfg=8 ctermbg=8 guifg=darkgray guibg=darkgray

" make the status line have more contrast
"hi StatusLine guifg=#000000 guibg=#bbbbbb gui=italic ctermbg=235 ctermfg=254
hi StatusLineNC guifg=#000000 guibg=#bbbbbb gui=italic ctermbg=235 ctermfg=254
"hi StatusLineNC guifg=#3B3B3B guibg=#202020 ctermfg=0 ctermbg=235
hi StatusLine guifg=#3B3B3B guibg=yellow ctermfg=0 ctermbg=235

" make python builtins stand out more
hi pythonBuiltinObj guifg=#FF73FD ctermfg=151
hi pythonExClass guifg=#FF73FD ctermfg=151

if version >= 700
  hi CursorLine guibg=#404040 gui=none ctermbg=234 cterm=none
endif
