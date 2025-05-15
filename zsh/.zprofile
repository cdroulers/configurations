
eval "$(/opt/homebrew/bin/brew shellenv)"

eval "$(/opt/homebrew/bin/brew shellenv)"

export VISUAL=nvim
export EDITOR="$VISUAL"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

export GPG_TTY=$(tty)

# Prevent ctrl+D closing terminals inside tmux (cause I hit it while moving around with nvim keybinds)
set -o ignoreeof
