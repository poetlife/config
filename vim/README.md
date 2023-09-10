# Vim配置说明

## install

使用此份配置需要安装`vim-plug`，如果是unix系统，可以执行以下的命令安装：
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

使用`deopelete`插件需要安装`python3`，并且需要安装以下包：
```bash
pip3 install --user pynvim
```

> ⚠️ 如果你使用了anaconda管理你的python版本，那么需要确定当前vim使用的python版本，然后指定版本安装对应依赖的三方包。
> 
> ```bash
> # 在vim中执行如下命令查看路径
> :pythonx import sys; print(sys.path)
> ```
> 之后再使用对应路径的pip进行安装
> ```bash
> /usr/local/bin/pip3.8 install --user pynvim
> ```

## 配置详情

### layout

- `vim/vimrc` root vim config file
- `vim/settings/plugins.vim` vim plugins config file
- `vim/settings/configs.vim` vim general config file

### Root

以下是配置文件中带的配置项

- 行号显示
- Tab转换为4个空格
- 搜索的时候高亮显示所有项

### Plugins

1. [fzf.vim](https://github.com/junegunn/fzf.vim) 用来模糊搜索
2. [vim-fugitive](https://github.com/tpope/vim-fugitive) git插件
3. [ALE](https://github.com/dense-analysis/ale) LSP插件
4. [deoplete.vim](https://github.com/Shougo/deoplete.nvim/) 提供了自动补全，需要Python3的支持
    - 配置了补全唯一来源: `ALE`
5. [vim-airline](https://github.com/vim-airline/vim-airline) 状态栏
6. [Tagbar](https://github.com/preservim/tagbar) 大纲栏
7. [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags) 自动生成标签
8. [edge](https://github.com/sainnhe/edge/tree/master) 主题
9. [NERDTree](https://github.com/preservim/nerdtree) 文件浏览器

#### ALE

该插件配置了不同的linters和fixers，因此，配置的不同的内容可能需要安装，安装脚本如下：

##### Go

- **linters**:
- **fixers**:  `gofmt`, `goimports`, `golines`, `gopls`


```bash
# goimports 自动更新Go的import
go install golang.org/x/tools/cmd/goimports@latest
# golines 可以将长行自动转换为短行
go install github.com/segmentio/golines@latest
# gopls Go official LSP
go install golang.org/x/tools/gopls@latest
```
##### Python

- **linters**: `flake8`, `pylsp`
- **fixers**: `autoflake`, `isort`


```bash
# flake8
pip install flake8
# autoflake 修复flake提示的问题
pip install --upgrade autoflake
# isort 优化导入
pip install isort
# pylsp LSP
pip install pylsp
```

##### C

> [Official Doc](https://github.com/dense-analysis/ale/blob/master/doc/ale-c.txt)

- **linters**: `cc`
- **fixers**: 

其中`cc`是可以通过`g:ale_c_cc_executable`配置执行路径等，我们这里使用`gcc`。

#### deoplete

它是一个自动补全的插件，可以提供强大的代码自动补全功能。我们在这里针对C/C++配置了omnifunc的补全：

```bash
set completeopt+=noselect
call deoplete#custom#option('omni_patterns', {
\ 'c': ['[^. *\t]\%(\.\|->\)\w*'],
\ 'cpp': ['[^. *\t]\%(\.\|->\)\w*', '[a-zA-Z_]\w*::'],
\})
```

#### vim-gutentags

> 使用之前，需要安装好对应的ctags。

该插件可以管理`tags`文件，以及自动生成对应的tags文件。


## 开发相关

### C/C++

由于C/C++开发大部分的时候需要获取系统头相关的信息，因此我们约定将生成的系统头文件放置在`~/.cache/tags/sys-tags`中，可以执行如下命令生成：

```bash
mkdir -p ~/.cache/tags
ctags -R -f ~/.cache/tags/sys-tags --sort=yes /usr/include
```

再通过vim中使用如下命令导入：
```bash
set tags+=~/.cache/tags/sys-tags
```

而后就可以正常的使用了。
