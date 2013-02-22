c() { cd ~/Sites/$1; }
_c() { _files -W ~/Sites -/; }
compdef _c c

h() { cd ~/$1; }
_h() { _files -W ~/ -/; }
compdef _h h

export EDITOR='subl -w'

# autocorrect is more annoying than helpful
unsetopt correct_all

# a few aliases I like
alias b='bundle'
alias r='rails'
alias s='subl'
alias ls='gls --color=auto'
alias lock='open ~/bin/Lock\ Computer.app'

alias devlog='echo "tail -f log/development.log" && tail -f log/development.log'

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
export PATH="/Users/gerry/bin:$PATH"

# unlimited history
export HISTSIZE=1000000

source ~/.ssh/shell_vars

echo
fortune
cd ~
