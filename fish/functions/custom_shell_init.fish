function custom_shell_init
  abbr devlog tail -f log/development.log
  abbr g git
  abbr guard bundle exec guard
  abbr l exa
  abbr b bin/rails

  set -Ux EDITOR 'code --wait'

  # Setup rbenv
  set PATH $HOME/.rbenv/shims $PATH
  rbenv rehash >/dev/null ^&1
end
