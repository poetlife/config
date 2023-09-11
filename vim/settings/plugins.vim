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

" cscope
Plug 'dr-kino/cscope-maps'

" 自动补全括号
Plug 'jiangmiao/auto-pairs'

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
let g:deoplete#enable_at_startup = 1 " 设置开始的时候就启动
call deoplete#custom#option('sources', {
\ '_': ['ale'],
\})
set completeopt+=noselect
call deoplete#custom#option('omni_patterns', {
\ 'c': ['[^. *\t]\%(\.\|->\)\w*'],
\ 'cpp': ['[^. *\t]\%(\.\|->\)\w*', '[a-zA-Z_]\w*::'],
\})


" ========================
" settings of gutentags
" ========================
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project', 'makefile']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

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
