ZSH=$HOME/.oh-my-zsh
ZSH_THEME="gshaw"
# DISABLE_AUTO_UPDATE="true"

plugins=(git bundler brew gem gshaw)

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
