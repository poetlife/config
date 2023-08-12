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

## 配置详情

### layout

- `vim/vimrc` root vim config file
- `vim/settings/plugins.vim` vim plugins config file
- `vim/settings/configs.vim` vim general config file

### Root

以下是配置文件中带的配置项

- 行号显示
- Tab转换为4个空格

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
