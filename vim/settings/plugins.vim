call plug#begin()

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git plugins
Plug 'tpope/vim-fugitive'

" Lint LSP
Plug 'dense-analysis/ale'

call plug#end()

" settings of ale
let g:ale_completion_enabled = 1
let g:ale_fixers = {
\   'go': ['gofmt', 'goimports', 'golines', 'gopls'],
\}
let g:ale_fix_on_save = 1
