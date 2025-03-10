function custom_shell_init
  abbr g git
  abbr m mix
  abbr l eza --icons
  abbr mr mise run
  abbr mrc mise run check

  abbr sleepnow pmset sleepnow

  # Uncomment for Rails work
  # abbr b bin/rails
  # abbr devlog tail -f log/development.log
  # abbr guard bundle exec guard

  set -Ux EDITOR 'code --wait --new-window'
  set -Ux DOKKU_HOST 'dokku.gshaw.ca'

  # Setup Homebrew
  /opt/homebrew/bin/brew shellenv | source
  fish_add_path /opt/homebrew/opt/postgresql@16/bin

  # Maintain IEx history
  # https://stackoverflow.com/a/45405071/265940
  set -Ux ERL_AFLAGS '-kernel shell_history enabled'

  # Setup .NET
  # set -Ux DOTNET_ROOT (mise where dotnet)

  # Setup Rust
  # set PATH $HOME/.cargo/bin $PATH

  # Setup Startship prompt
  set -Ux STARSHIP_CONFIG ~/.dotfiles/starship.toml
  starship init fish | source
end
