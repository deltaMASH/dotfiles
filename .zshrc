export DISPLAY=localhost:0
export LANG=ja_JP.UTF-8
export EDITOR=vim

alias ls='ls --color=auto'

setopt no_beep

export PYENV_ROOT="$HOME/.pyenv"
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

autoload -U compinit; compinit
PROMPT="%m %~ $ "

if [ -e "/opt/ros/kinetic/setup.zsh" ]; then
    source /opt/ros/kinetic/setup.zsh
fi
