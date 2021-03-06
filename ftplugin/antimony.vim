" Maintainer: Garrit Franke <garrit@slashdev.space>

" Only do this when not done yet for this buffer
if exists('b:did_ftplugin')
    finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" setlocal noexpandtab
" setlocal tabstop=8
" setlocal shiftwidth=0
" setlocal softtabstop=0
" setlocal textwidth=80

" Set 'formatoptions' to break comment lines but not other lines,
" and insert the comment leader when hitting <CR> or using "o".
setlocal fo-=t fo+=croql
