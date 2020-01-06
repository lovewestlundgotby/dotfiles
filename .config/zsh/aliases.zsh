alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias mkdir='mkdir -pv'
alias cp='cp -i'
alias df='df --human-readable'                                                # Human-readable sizes
alias free='free --human'                                            # Show sizes in MB

alias sudo='nocorrect sudo'

##########
# pacman #
##########
# For more information: https://wiki.archlinux.org/index.php/Pacman/Rosetta

# Perform a system upgrade
alias upgrade='sudo pacman -Syu'

# Clean up all local caches
alias autoclean='sudo pacman -Sc'

# Remove unneeded dependencies
alias autoremove='sudo pacman -Qdtq | sudo pacman -Rs -'

################
# maim aliases #
################

# Select area on screen and copy the selection into the clipboard
alias maims='maim -s | xclip -selection clipboard -t image/png'

# Select a window to screen shot and save as shadow.png in the current working directory
alias maimws='maim -st 9999999 | convert - \( +clone -background black -shadow 80x3+5+5 \) +swap -background none -layers merge +repage shadow.png'

# Screenshot the current active window and save chronologically in ~/Pictures/
alias maimprntscr='maim -i $(xdotool getactivewindow) ~/Pictures/$(date +%s).png'

############################
# ls and grep aliases #
############################

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ -x /usr/bin/rg ]; then
  alias rg='rg --smart-case'
fi

# some more ls aliases
alias ll='ls -AlFhp'
alias la='ls -Ahp'
alias l='ls -gGFhp'
alias lr='ls -R'

# git aliases
# alias gstat='git status'
# alias gpull='git pull'
# alias gadd='git add'
# alias gaddp='git add -p'
# alias gcom='git commit'
# alias gcomm='git commit -m'
# alias gcomp='git commit -p'
# alias gpush='git push'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=normal -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
