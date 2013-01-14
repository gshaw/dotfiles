ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gshaw"
# DISABLE_AUTO_UPDATE="true"

plugins=(git brew gem bundler gshaw)

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
