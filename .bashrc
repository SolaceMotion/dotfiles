#
# ~/.bashrc
#

./keyboard.sh

PS1="\u@\h \w \$ "i

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

alias grep='grep --color=always'
alias l='ls'
alias nv='nvim'
alias ll='ls -la'
alias la='ls -a'
alias open='xdg-open'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  . /usr/share/powerline/bindings/bash/powerline.sh
fi

# display variable
export DISPLAY=:0

# include cargo environment
. "$HOME/.cargo/env"
