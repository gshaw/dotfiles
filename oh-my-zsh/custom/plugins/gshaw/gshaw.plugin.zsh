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
alias s='subl'
alias ls='gls --color=auto'
alias lock='open ~/bin/Lock\ Computer.app'

alias r='bundle exec rails $*'
alias b='bundle'
alias bi='echo bundle install && bundle install'

alias devlog='echo "tail -f log/development.log" && tail -f log/development.log'

rake()  { echo "bundle exec rake $*" && bundle exec rake $* }
guard()  { echo "bundle exec guard $*" && bundle exec guard $* }

export PATH="/usr/local/sbin:$PATH"

# add plugin's bin directory to path
export PATH="$(dirname $0)/bin:$PATH"
export PATH="/Users/gerry/bin:$PATH"

source ~/.ssh/shell_vars

echo
fortune
cd ~
