
# set mode to vi and curse settings
set -o vi
zle-line-init zle-keymap-select () {
	if [ "$TERM" = "xterm-256color" ]; then
		if [ $KEYMAP = vicmd ]; then
			echo -ne "\e[2 q"
		else
			echo -ne "\e[5 q"
		fi
	fi
}
zle -N zle-keymap-select
zle -N zle-line-init
bindkey -v

# pyenv settings
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"
