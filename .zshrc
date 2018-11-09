export PATH="$PATH:/usr/sbin"
export EDITOR=nvim
export VISUAL=nvim

if [ -f /etc/profile.d/vte.sh ]; then
    source /etc/profile.d/vte.sh
fi

PROMPT='%F{196}%~ $ %f%F{gray}'
RPROMPT='%T'

if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi

# Print last command to terminal title
#[[ -t 1 ]] || return
#case $TERM in
#  *xterm*|*rxvt*|(dt|k|E|a)term)
#    # Write some info to terminal title.
#    # This is seen when the shell prompts for input.
#    function precmd {
#        print -Pn "\e]0;termite %(1j,%j job%(2j|s|); ,)%~\a"
#    }
#    # Write command and args to terminal title.
#    # This is seen while the shell waits for a command to complete.
#    function preexec {
#        printf "\033]0;%s\a" "$1"
#    }
#  ;;
#esac

#funciton precmd() {
#    print -Pn "\e]2;%~\a"
#}

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' file-sort name
zstyle ':completion:*' format '%d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[.,_-]=** r:|=**'
zstyle ':completion:*' menu select=0
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/love/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
