
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/git/bin:$PATH"
export PATH="/usr/local/opt/mysql@8.0/bin/:$PATH"
export PATH=/usr/local/opt/php@7.4/bin:$PATH

export PATH="/usr/local/bin:$PATH"

#ターミナルのカラー設定
export CLICOLOR=1
export TERM=xterm-256color

#pythonの設定
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.pyenv/shims:$PATH"
eval "$(pyenv init -)"

#Gitの保管機能有効
source ${HOME}/.zsh/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true 
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto

setopt PROMPT_SUBST ; PS1='%n %c%F{cyan}$(__git_ps1 " [%s]")%f \$ '

export PATH=/usr/local/var/nodebrew/current/bin:$PATH

# 補完機能有効にする
autoload -U compinit
compinit -u

# 補完候補に色つける
autoload -U colors
colors
zstyle ':completion:*' list-colors "${LS_COLORS}"

# 単語の入力途中でもTab補完を有効化
setopt complete_in_word
# 補完候補をハイライト
zstyle ':completion:*:default' menu select=1
# キャッシュの利用による補完の高速化
zstyle ':completion::complete:*' use-cache true
# 大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完リストの表示間隔を狭くする
setopt list_packed

alias ll='ls -alF'
alias .z='. ~/.zshrc'
alias gs='git status'
alias ga='git add'
alias gcm='git commit -m'
alias gl='git log'
alias gb='git branch'
alias gc='git checkout'
alias gd='git diff HEAD'

alias sail='vendor/bin/sail'

alias dc='docker-compose'

alias jpg='jpegoptim --max=80'
alias png='pngquant --quality=65-80'
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH=$HOME/.composer/vendor/bin:$PATH
