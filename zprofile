# disable session history
SHELL_SESSIONS_DISABLE=1

# disable less history
export LESSHISTFILE=-

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
