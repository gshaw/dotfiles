function custom_shell_init
  abbr g git
  abbr l eza
  abbr la eza --git -lao --no-permissions --no-user
  abbr mdl markdownlint-cli2
  abbr mr mise run
  abbr mrc mise run check

  abbr m4a yt-dlp --config-locations ~/.dotfiles/yt-dlp.conf
  abbr dsdestroy find . -name '*.DS_Store' -type f -delete

  abbr sn pmset sleepnow
  abbr oc opencode -c

  # Uncomment for Rails work
  # abbr b bin/rails
  # abbr devlog tail -f log/development.log
  # abbr guard bundle exec guard

  set -gx EDITOR 'code --wait --new-window'

  # Maintain IEx history
  # https://stackoverflow.com/a/45405071/265940
  set -gx ERL_AFLAGS '-kernel shell_history enabled'

  # Setup Homebrew
  /opt/homebrew/bin/brew shellenv | source

  # Setup Starship prompt
  set -gx STARSHIP_CONFIG ~/.dotfiles/starship.toml
  starship init fish | source

  # Setup PostgreSQL
  # fish_add_path /opt/homebrew/opt/postgresql@17/bin

  # Setup LM Studio
  fish_add_path $HOME/.lmstudio/bin

  # Setup .NET
  # set -gx DOTNET_ROOT (mise where dotnet)

  # Setup Rust
  # fish_add_path $HOME/.cargo/bin

  # Setup Sprites.dev CLI (sprite)
  fish_add_path $HOME/.local/bin
end
