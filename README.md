# Gerry Shaw Dot Files

These are config files to set up a system the I like it. It uses
[Fish Shell](http://fishshell.com) and has only tested with Mac OS X.

## Installation

Run the following commands in your terminal. It will prompt you before it does anything destructive. Check out the [Rakefile](https://github.com/ryanb/dotfiles/blob/custom-bash-zsh/Rakefile) to see exactly what it does.

```terminal
git clone git://github.com/ryanb/dotfiles ~/.dotfiles
cd ~/.dotfiles
rake install
```

After installing, open a new terminal window to see the effects.

## Features

* Greet each new terminal with a fortune.  `brew install fortune`

* Custom Git prompt to detect branch and if branch is modified.

* Custom abbreviations for common actions

* Integration with [Oh My Fish](https://github.com/oh-my-fish/oh-my-fish)
