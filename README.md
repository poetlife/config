# config
包含了各种软件的配置文件，用来进行同步

## Vim

> 包含日常使用的`.vimrc`配置文件
>
> 使用配置之前需要按照[README](./vim/README.md#install)安装`vim-plug`。

随后，同步配置文件到用户目录：

```bash
make vim-config
```

## Tmux

> 使用的是oh-my-tmux，包含自己使用的`.tmux.conf.local`文件
> 
> 使用配置之前需要按照[README](./tmux/README.md#install)安装。

随后，同步配置文件到用户目录：

```bash
make tmux-config
```

# zsh

> 使用了zsh和oh-my-zsh，具体可以看[文档](https://blog.thepykt.xyz/posts/linux/tools/tmux/#zsh)。

我们先安装oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

安装语法高亮的插件
```bash
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```

安装自动补全插件
```bash
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git
```

编辑`~/.zshrc`，添加plugin
```bash
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
```
