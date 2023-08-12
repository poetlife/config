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

" File System Browser
Plug 'preservim/nerdtree'

" 状态栏
Plug 'vim-airline/vim-airline'

" 大纲
Plug 'preservim/tagbar'

" guentctags 自动生成标签
Plug 'ludovicchabant/vim-gutentags'

" themes 主题
Plug 'sainnhe/edge'

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

" ========================
" settings of themes of edge
" ========================
if has('termguicolors')
    set termguicolors
endif
let g:edge_style = 'aura'
let g:edge_dim_foreground=1
let g:edge_better_performance = 1
colorscheme edge
let g:airline_theme = 'edge' " setting airline theme
