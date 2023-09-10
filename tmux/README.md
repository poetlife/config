# tmux配置说明

## 当前问题

1. 当使用.tmux的时候，vim的colorschema会失效，但是在原生的tmux中不会有什么问题。

## install

> Prerequisites: tmux version >= 2.3

- install oh-my-tmux
    
    ```bash
    cd
    git clone https://github.com/gpakosz/.tmux.git
    ln -s -f .tmux/.tmux.conf
    cp .tmux/.tmux.conf.local .
    ```
- 
