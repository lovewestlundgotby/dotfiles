
# vi-mode
bindkey -v

bindkey -M viins 'jk' vi-cmd-mode

bindkey -M viins '^j' history-substring-search-down
bindkey -M viins '^k' history-substring-search-up
bindkey -M viins '^u' backward-kill-line
bindkey -M viins '^w' backward-kill-word
bindkey -M viins '^b' backward-word
bindkey -M viins '^f' forward-word
bindkey -M viins '^i' beginning-of-line
bindkey -M viins '^a' end-of-line
bindkey -M viins '^I' menu-complete                  # Tab
bindkey -M viins '^[[z' reverse-menu-complete        # Shift+Tab

bindkey -M vicmd 'u' undo

# Fix BACKSPACE key.
bindkey '^?' backward-delete-char

# Fix DEL key.
bindkey -M vicmd '^[[3~' delete-char
bindkey '^[[3~' delete-char                   # Delete key.

bindkey '^R' fzf-history-widget
bindkey '^T' fzf-file-widget
bindkey '\ec' fzf-cd-widget

bindkey '^[[H' beginning-of-line              # Home key.
bindkey '^[[F' end-of-line                    # End key.

bindkey '^[[A' history-substring-search-up    # Arrow up searches upwards in history by substring.
bindkey '^[[B' history-substring-search-down  # Arrow down searches downwards in history by substring.
bindkey '^[[1;5D' backward-word               # ctrl+left arrow.
bindkey '^[[1;5C' forward-word                # ctrl+right arrow.
# bindkey '^[[Z' undo                           # Shift+tab undo last action.
