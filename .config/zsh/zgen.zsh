export ZGEN_DIR="$XDG_DATA_HOME/zsh"
export ZGEN_SRC="$ZGEN_DIR/zgen.zsh"

[ -d "$ZGEN_DIR" ] || git clone https://github.com/tarjoilija/zgen.git "$ZGEN_DIR"
source $ZGEN_SRC
if ! zgen saved; then
    echo "Initializing zgen"
    zgen load hlissner/zsh-autopair autopair.zsh
    zgen load zsh-users/zsh-history-substring-search
    zgen load zdharma/history-search-multi-word
    zgen load junegunn/fzf shell
    [ -z "$SSH_CONNECTION" ] && zgen load zdharma/fast-syntax-highlighting
    zgen load MichaelAquilina/zsh-auto-notify
    zgen save
fi

# fzf
# fd is faster than find.
if command -v fd > /dev/null; then
    export FZF_DEFAULT_COMMAND="fd ."
    export FZF_CTRL_T_COMMAND="${FZF_DEFAULT_COMMAND}"
    export FZF_ALT_C_COMMAND="fd -t d . $HOME"
fi
# rg is faster than fd on listing files.
if command -v rg > /dev/null; then
    export FZF_CTRL_T_COMMAND="rg --files ."
fi

AUTO_NOTIFY_IGNORE+=("bat"
                     "gdb"
                     "git log2"
                    )
