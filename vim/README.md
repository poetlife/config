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
    - 配置了Golang的linters: `gofmt`, `goimports`, `golines`, `gopls`

4. [deoplete.vim](https://github.com/Shougo/deoplete.nvim/) 提供了自动补全，需要Python3的支持
    - 配置了补全唯一来源: `ALE`
