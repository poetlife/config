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
