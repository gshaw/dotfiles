# Gerry Shaw Dot Files

These are config files to set up a system the I like it. It uses
[Fish Shell](http://fishshell.com) and has only tested with Mac OS X.

## Installation

Run the following commands in your terminal. It will prompt you before it does anything destructive. Check out the [Rakefile](https://github.com/ryanb/dotfiles/blob/custom-bash-zsh/Rakefile) to see exactly what it does.

```terminal
git clone git://github.com/gshaw/dotfiles ~/.dotfiles
cd ~/.dotfiles
rake install
```

After installing, open a new terminal window to see the effects.

## Homebrew

To configure Fish shell to init correctly

echo "custom_shell_init" > ~/.config/fish/config.fish

Update Homebrew packages and casks using:

```
brew list --formula -1 > ~/.dotfiles/brew/Brewfile
brew list --cask -1 > ~/.dotfiles/brew/Caskfile
```

To restore packages:

```
cat Brewfile | xargs brew install
cat Caskfile | xargs brew install --cask
```

## Features

- Greet each new terminal with a fortune. `brew install fortune`

- Custom Git prompt to detect branch and if branch is modified.

- Custom abbreviations for common actions

![Screenshot](https://cloud.githubusercontent.com/assets/33321/10742233/4f33fefa-7be9-11e5-9faa-bed22f83144a.png)
