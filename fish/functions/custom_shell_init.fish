function custom_shell_init
  abbr g git
  abbr m mix
  abbr lbs /Users/gerry/.asdf/installs/elixir/1.13.0/.mix/escripts/livebook server
  abbr sl swiftlint .
  abbr sf swiftformat .

  abbr sleepnow pmset sleepnow

  # Uncomment for Rails work
  # abbr b bin/rails
  # abbr devlog tail -f log/development.log
  # abbr guard bundle exec guard

  set -Ux EDITOR 'code --wait'
  set -Ux DOKKU_HOST 'dokku.gshaw.ca'

  # Setup Homebrew
  /opt/homebrew/bin/brew shellenv | source

  # Maintain IEx history
  # https://stackoverflow.com/a/45405071/265940
  set -Ux ERL_AFLAGS '-kernel shell_history enabled'

  # Setup asdf
  source /opt/homebrew/opt/asdf/libexec/asdf.fish

  # Setup Rust
  # set PATH $HOME/.cargo/bin $PATH
end
