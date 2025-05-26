
if [[ -e "/opt/homebrew/bin/brew" ]]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"

	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export VISUAL=nvim
export EDITOR="$VISUAL"
export LESS="--no-init --quit-if-one-screen --RAW-CONTROL-CHARS"

if [[ -e "/opt/homebrew/opt/libpq/bin" ]]; then
	export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
fi

if [[ -e "$HOME/.volta" ]]; then
	export VOLTA_HOME="$HOME/.volta"
	export PATH="$VOLTA_HOME/bin:$PATH"
fi

if [[ -e "/opt/nvim/" ]]; then
	export PATH="$PATH:/opt/nvim/"
fi

export GPG_TTY=$(tty)

# Prevent ctrl+D closing terminals inside tmux (cause I hit it while moving around with nvim keybinds)
set -o ignoreeof
