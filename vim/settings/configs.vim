" 该文件中包含着通用的配置

" 设置Tab与空格转换
set tabstop=4
set shiftwidth=4
set expandtab

" 设置搜索高亮 * 可以让所有都高亮
set hlsearch

" 检查头文件是否存在，如果不存在则生成
function! FileExists(filename)
    return !empty(glob(a:filename))
endfunction

let sysTagsFileName = "~/.cache/tags/sys-tags"

if !FileExists(sysTagsFileName)
    " 文件不存在，需要生成
    :! mkdir -p ~/.cache/tags
    :! ctags -R -f ~/.cache/tags/sys-tags --sort=yes /usr/include
endif

set tags+=~/.cache/tags/sys-tags
