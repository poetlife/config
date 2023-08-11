call plug#begin()

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git plugins
Plug 'tpope/vim-fugitive'

" Lint LSP
Plug 'dense-analysis/ale'

" deoplete.vim for compeletion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

" settings of ale
let g:ale_completion_enabled = 1
let g:ale_fixers = {
\   'go': ['gofmt', 'goimports', 'golines', 'gopls'],
\}
let g:ale_fix_on_save = 1

" ========================
" settings of deopete
" ========================
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('sources', {
\ '_': ['ale'],
\})
