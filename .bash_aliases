run() {
    #perform a ./ by typing run followed by * to run
    ./$1
}
alias run=run

alias ..='cd ..'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias apt='sudo apt'

alias mkdir='mkdir -pv'

# display core temps
alias temps='sensors'

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

# some more ls aliases
alias ll='ls -AlF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

g++_auto_output_name() {
    #compile the provided file into an output with the same name
    arg1=$1
    if [[ "$arg1" = -* ]]; then
        if g++ "$@"; then
            echo 'Compiled into' $(tput bold)$2 | cut -d '.' -f 2 --complement
        fi
    elif [ ${#arg1} -gt 0 ]; then
        a="echo $arg1 | grep -aob '\.' | grep -oE '[0-9]+'"
        posOfPeriod=$(eval $a)
        lengthOfFileExt=$((${#arg1}-posOfPeriod))
        if g++ -o ${arg1::-lengthOfFileExt} $1; then
            echo 'Compiled into' $(tput bold)$arg1 | cut -d '.' -f 2 --complement
        fi
    else
        g++
    fi
}
alias g++='g++_auto_output_name'
