# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*:options' list-colors '=^(-- *)=33'
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select=3
zstyle ':completion:*' rehash true                              # automatically find new executables in path
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '/home/love/.zshrc'

export LESS_TERMCAP_mb=$(tput blink; tput setaf 22) # Start blink.
export LESS_TERMCAP_md=$(tput bold; tput setaf 38) # Start bold.
export LESS_TERMCAP_me=$(tput sgr0) # Stop blink, bold, underline.
export LESS_TERMCAP_so=$(tput bold; tput setaf 7; tput setab 24) # Start standout.
export LESS_TERMCAP_se=$(tput rmso; tput sgr0) # Stop standout.
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) # Start underline.
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0) # Stop underline.
export LESS_TERMCAP_mr=$(tput rev) # Start reverse.
export LESS_TERMCAP_mh=$(tput dim) # Start half bright.
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)
export GROFF_NO_SGR=1         # For Konsole and Gnome-terminal
export LESS=--RAW-CONTROL-CHARS

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2400
SAVEHIST=2000
setopt autocd
setopt histignorealldups
setopt histignorespace
setopt incappendhistory
bindkey -e
# End of lines configured by zsh-newuser-install

export VISUAL=/usr/bin/nvim

# Source additional configuration and functions
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/abbreviations.zsh
source ~/.config/zsh/zsh-fzy.plugin.zsh

# Use syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=#00ff00,bold'
HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='fg=#ff0000,bold'

WORDCHARS=${WORDCHARS//[\/.]/}                # Don't consider certain characters part of the word.

bindkey '^[[H' beginning-of-line              # Home key.
bindkey '^[[F' end-of-line                    # End key.
bindkey '^[[3~' delete-char                   # Delete key.

bindkey '^[[A' history-substring-search-up    # Arrow up searches upwards in history by substring.
bindkey '^[[B' history-substring-search-down  # Arrow down searches downwards in history by substring.
bindkey '^[[1;5D' backward-word               # ctrl+left arrow.
bindkey '^[[1;5C' forward-word                # ctrl+right arrow.
bindkey '^[[Z' undo                           # Shift+tab undo last action.
bindkey '^R' fzy-history-widget               # Ctrl+r performs a fuzzy history search.

BLACK="{black}"
GREEN="{34}"
LIMEGREEN="{107}"
CYAN="{38}"
RED="{160}"
YELLOW="{178}"
ORANGE="{202}"
GRAY="{237}"

FG_BLACK="%F${BLACK}"
FG_GREEN="%F${GREEN}"
FG_LIMEGREEN="%F${LIMEGREEN}"
FG_CYAN="%F${CYAN}"
FG_RED="%F${RED}"
FG_YELLOW="%F${YELLOW}"
FG_ORANGE="%F${ORANGE}"
FG_GRAY="%F${GRAY}"

BG_BLACK="%K${BLACK}"
BG_GREEN="%K${GREEN}"
BG_LIMEGREEN="%K${LIMEGREEN}"
BG_CYAN="%K${CYAN}"
BG_RED="%K${RED}"
BG_YELLOW="%K${YELLOW}"
BG_ORANGE="%K${ORANGE}"
BG_GRAY="%K${GRAY}"

RBLOCKARROW="" # \ue0b0
RANGLE="❯" # \u276f
ARROW_UP="↑" # \u2191
ARROW_DOWN="↓" # \u2193
PLUSMINUS="±" # \u00b1
BRANCH="" # \uf020
BRANCH2="" # \ue0a0
DETACHED="➦" # \u27a6
CROSS="✘" # \u2718
LIGHTNING="⚡" # \u26a1
GEAR="⚙" # \u2699
BULLET_SMALL="•" # \u2022
BULLET_LARGE="●"
PLUS="➕" # \u2795
PLUS2="✚" # \u271a
FLAME="" # \uf490

FORMAT_VCS="${FG_CYAN}%r/%S❯${FG_YELLOW} %b%c%u%f"
FORMAT_VCS_ACTION="${FG_ORANGE}%a%m%f"
FORMAT_VCS_END="${FG_YELLOW}❯%f"

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' patch-format "%n/%a"
zstyle ':vcs_info:*' actionformats "${FORMAT_VCS} ${FORMAT_VCS_ACTION}${FORMAT_VCS_END}"
zstyle ':vcs_info:*' formats "${FORMAT_VCS}${FORMAT_VCS_END}"
zstyle ':vcs_info:*' nvcsformats "${FG_CYAN}%~%f"
zstyle ':vcs_info:git*+set-message:*' hooks git-status

+vi-git-status() {
    local NUM_STAGED=$(git diff --staged 2> /dev/null | wc -l)
    if [[ $NUM_STAGED -gt 0 ]]; then
        hook_com[staged]=" ${FG_GREEN}●%f"
    fi

    local REPO_DIR=$(git rev-parse --show-toplevel 2> /dev/null)
    hook_com[unstaged]=""
    local NUM_UNSTAGED=$(git ls-files $REPO_DIR --modified --exclude-standard 2> /dev/null | wc -l)
    if [[ $NUM_UNSTAGED -gt 0 ]]; then
        if [[ $NUM_STAGED -eq 0 ]]; then
            hook_com[unstaged]+=" "
        fi
        hook_com[unstaged]+="${FG_YELLOW}●%f"
    fi

    local NUM_UNTRACKED=$(git ls-files $REPO_DIR --other --exclude-standard 2> /dev/null | wc -l)
    if [[ $NUM_UNTRACKED -gt 0 ]]; then
        if [[ $NUM_STAGED -eq 0 && $NUM_UNSTAGED -eq 0 ]]; then
            hook_com[unstaged]+=" "
        fi
        hook_com[unstaged]+="${FG_RED}●%f"
    fi

    local NUM_AHEAD NUM_BEHIND
    local -a COMMIT_DIFF
    NUM_AHEAD=$(git rev-list ${hook_com[branch]}@{upstream}..HEAD --count 2> /dev/null)
    (( $NUM_AHEAD )) && COMMIT_DIFF+="${FG_GREEN}+${NUM_AHEAD}%f"

    NUM_BEHIND=$(git rev-list HEAD..${hook_com[branch]}@{upstream} --count 2> /dev/null)
    (( $NUM_BEHIND )) && COMMIT_DIFF+="${FG_RED}-${NUM_BEHIND}%f"

    if [[ -n $COMMIT_DIFF ]]; then
        hook_com[unstaged]+=" ${(j:/:)COMMIT_DIFF}"
    fi

    if [[ ${hook_com[action]} == "rebase" ]]; then
        hook_com[action]="${LIGHTNING}"
    elif [[ ${hook_com[action]} == "rebase-i" ]]; then
        hook_com[action]="${LIGHTNING}"
    elif [[ ${hook_com[action]} == "merge" ]]; then
        hook_com[action]="${CROSS}"
    fi
}

NL=$'\n'
PROMPT_CHAR="%B%(!.#.)${RANGLE}%b"
COLOR_PROMPT="%(?.${FG_CYAN}.${FG_RED})${PROMPT_CHAR}%f"

precmd() {
    vcs_info
    PS1="${vcs_info_msg_0_}${NL}${COLOR_PROMPT} "
}
