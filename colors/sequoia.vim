" let g:colors_name = 'sequoia-moonlight'
" set background=dark
" highlight clear
"
" if exists("syntax_on")
"     syntax reset
" endif


lua package.loaded["sequoia"] = nil
lua require("sequoia").colorscheme()
