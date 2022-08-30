filetype plugin indent on
set expandtab
set shiftwidth=2
set softtabstop=2
set nohlsearch
set backupcopy=yes
set number
set visualbell
set t_vb=

" Important!!
if has('termguicolors')
  set termguicolors
endif
" For dark version.
set background=dark
" For light version.
" set background=light
" Set contrast.
" This configuration option should be placed before `colorscheme everforest`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:everforest_background = 'soft'
let g:everforest_transparent_background = 1
" For better performance
let g:everforest_better_performance = 1
colorscheme everforest

let g:airline_theme = 'everforest'

