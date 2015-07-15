ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gshaw"
# DISABLE_AUTO_UPDATE="true"

plugins=(git brew gem bundler z terminalapp gshaw)

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
eval "$(rbenv init -)"

# shell completions
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
