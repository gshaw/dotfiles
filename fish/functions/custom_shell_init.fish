function custom_shell_init
  abbr devlog tail -f log/development.log
  abbr g git
  abbr guard bundle exec guard
  abbr l exa
  abbr b bin/rails

  set -Ux EDITOR 'code --wait'
  set -Ux DOKKU_HOST 'dokku.gshaw.ca'

  # Maintain IEx history
  # https://stackoverflow.com/a/45405071/265940
  set -Ux ERL_AFLAGS '-kernel shell_history enabled'

  # Setup dokku
  alias dokku 'bash $HOME/.dokku/contrib/dokku_client.sh --rm'

  # Setup rbenv
  status --is-interactive; and source (rbenv init -|psub)

  # Setup asdf
  source /usr/local/opt/asdf/asdf.fish

  # Setup Rust
  # set PATH $HOME/.cargo/bin $PATH
end
