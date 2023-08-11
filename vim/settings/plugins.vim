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

" 状态栏
Plug 'vim-airline/vim-airline'

" 大纲
Plug 'preservim/tagbar'

call plug#end()

" ========================
" settings of ale
" ========================
let g:ale_completion_enabled = 1
let g:ale_c_cc_executable = 'gcc'
let g:ale_linters = {
\   'python': ['flake8', "pylsp"],
\   'c': ['cc'],
\}
let g:ale_fixers = {
\   'go': ['gofmt', 'goimports', 'golines', 'gopls'],
\   'python': ['autoflake', 'isort'],
\}
let g:ale_fix_on_save = 1

" ========================
" settings of deopete
" ========================
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('sources', {
\ '_': ['ale'],
\})
