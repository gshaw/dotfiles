# function sync_brew
#   brew update
#   and brew bundle --file=~/.dotfiles/brew/Brewfile
# end

function sync_brewfile
  brew bundle dump --file=~/.dotfiles/brew/Brewfile --force
end
