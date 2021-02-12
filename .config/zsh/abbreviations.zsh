# Adopted from http://stackoverflow.com/questions/28573145/how-can-i-move-the-cursor-after-a-zsh-abbreviation
# Added support to expand `...` to `../..` automatically.

setopt extendedglob

typeset -A abbrevs

# General aliases
abbrevs=(
  # "ll"   "ls -al"
  # "l1"   "ls -1A"
  # "mdc"  "mkdir -p __CURSOR__ && cd \$_"
  # "killsshtty" 'kill $(ps auxww | grep ssh | grep tty| awk "{print \$2}")'
  # "kp" 'sudo kill $(ps auxww | grep ssh | grep -e "^pair" | awk "{print \$2}") ; chmod 770 /tmp/tmux-501'
  # "jsun" "python -mjson.tool"
  # "pag" 'ps auxww | grep'
  "pgr" "| grep"
  # "awkp" "| awk '{print \$__CURSOR__}'"
  # "tstamp" "| while read line; do ; echo \$(date | cut -f4 -d ' ') \$line; done"
  # "rlw"  'readlink $(which __CURSOR__)'
  # "wtnoti" "while do; noti; sleep 120; done"
  # "wt"     "while; do __CURSOR__; clear; sleep 5; done"
  # "wtbb"   "while; do !!; clear; sleep 5; done"
  # "ut"     "clear && until __CURSOR__; do sleep 5; done"
  # "utbb"   "clear && until !!; do sleep 5; done"
  # "epoch" "date +%s"
  # "epochms" 'echo $(($(gdate +%s%N)/1000000))'
  # "oedm" "osascript -e 'tell application \"System Events\" to tell appearance preferences to set dark mode to not dark mode'"
  "zource"  "source $ZDOTDIR/.zshrc"
  )

# Global protect VPN
abbrevs+=(
  "vpnc" "globalprotect connect --portal gp.cgit.se"
  "vpns" "globalprotect show --status"
  "vpnd" "globalprotect disconnect"
)

# Pacman
abbrevs+=(
  # Perform a system upgrade
  # "upgrade" "sudo pacman -Syu"
  # Clean up all local caches
  # "autoclean" "sudo pacman -Sc"
  # Remove unneeded dependencies
  # "autoremove" "sudo pacman -Qdtq | sudo pacman -Rs -"
)

# Tmux
abbrevs+=(
  "ta"    "tmux attach"
  "tan"   "tmux attach || tmux new -n editor"
  "tsw"   "tmux split-window"
  "tswrc" "tmux split-window rails c"
  "tswrs" "tmux split-window rails s"
  "tswv"  "tmux split-window vim"
  "tnw"   "tmux new-window"
  "tnwa"  "tnw; tnws; tnwb; tmux select-window -t 1"
  "tnws"  "tmux new-window -n server bin/webpack-dev-server \; split-window -v rails s"
  "tnwb"  "tmux new-window -n boards vim -p board-now.md board-later.md board-scratch-pad.md"
  "tnwl"  "tmux new-window -n logs \"while ((1)) { heroku logs -t -r production }\""
  "tnwp"  "tmux new-window -n ping ping 8.8.8.8"
  "tks"   "tmux kill-session"
  "cr7t"  "chmod -R 777 /tmp/tmux-501"
)

# Git aliases
abbrevs+=(
  "gs"    "git status -sb"
  "gsl"   "git status"
  "g1"    "git log1"
  "g2"    "git log2"
  "g3"    "git log3"

  "ga"    "git add"
  "gad"   "git add ."
  "gau"   "git add -u"
  "gap"   "git add -p"

  "gc"    "git commit -v"
  "gcf"   "git commit --fixup"
  "gca"   "git commit -v --amend"
  "gcane" "git commit --amend --no-edit"

  "gco"   "git checkout"
  "gcb"   "git checkout -b"
  "gcob"  "git branch | fzf | cut -c 3- | xargs git checkout"
  "gcom"  "git checkout -"
  "gcm"   "git checkout master"
  "gcd"   "git checkout develop"
  "gcl"   "git clone"
  "gb"    "git branch"
  "gbm"   "git branch -M"
  "gbv"   "git branch -vv"
  "gba"   "git branch -a"
  "gbav"  "git branch -a -vv"
  "gbda"  "git fetch -p && for branch in \$(git branch -vv | grep ': gone]' | awk '{print \$1}'); do git branch -D \$branch; done"

  # Remove local branches merged to HEAD.
  "gbdm"   'git branch --merged | grep -v "\*\|master\|develop" | xargs -n1 git branch -d'
  # Remove remote branches that exist locally and have been merged to HEAD.
  "gbdmr" 'git branch -r --merged | sed "s,origin/,," | xargs -n1 git branch -D 2> /dev/null'

  "gd"    "git diff"
  # "gdm"   "git diff origin/master.."
  # "gdms"  "git diff origin/master:./"
  "gdc"   "git diff --cached"
  "gdt"   "git difftool"
  "gdh"   "git diff HEAD~1"

  "gfo"   "git fetch origin"

  "gp"    "git push"
  "gpu"   "git push -u"
  "gpf"   "git push --force-with-lease"
  "gpo"   "git push origin"
  "gpod"  "git push origin --delete"

  "gl"    "git pull"
  "glr"   "git pull --rebase"
  "glor"  "git pull origin --rebase"
  # "glomr" "git pull origin master --rebase"

  "grb"   "git rebase"
  "grbi"  "git rebase -i"
  "grbia" "git rebase -i --autosquash"
  "grba"  "git rebase --abort"
  "grbc"  "git rebase --continue"
  "grbm"  "git rebase master"
  "grbd"  "git rebase develop"
  "grbom" "git rebase origin/master"
  "grbim" "git rebase -i master"

  "gr"    "git reset"
  "grh"   "git reset --hard"
  "grs"   "git reset --soft"

  "gchp"  "git cherry-pick"
  "gchpc" "git cherry-pick --continue"
  "gchpa" "git cherry-pick --abort"

  "gsh"   "git show"
  "gshs"  "git show --summary"
  "gshh"  "git show HEAD"

  "gsu"   "git submodule update --init --recursive"
  "gss"   "git submodule sync"
  "gsgl"  "git submodule -q foreach git pull -q origin master"

  "gsta"  "git stash push"
  "gstd"  "git stash drop"
  "gstl"  "git stash list"
  "gstp"  "git stash pop"
  "gsts"  "git stash show"

  "ggsup" 'git branch --set-upstream-to=origin/$(git branch | grep \* | cut -d " " -f2)'
  "gpsup" 'git push --set-upstream origin $(git branch | grep \* | cut -d " " -f2)'

  "gbd"   "git branch -d"
  "gbD"   "git branch -D"

  # "vgu"  'vim $(git ls-files --unmerged | cut -f2 | sort -u)'
  # "gcdi" "git clean -di"
)

magic-abbrev-expand() {
  expand-dots
  local MATCH
  LBUFFER=${LBUFFER%%(#m)[_a-zA-Z0-9]#}
  command=${abbrevs[$MATCH]}
  LBUFFER+=${command:-$MATCH}

  if [[ "${command}" =~ "__CURSOR__" ]]; then
    RBUFFER=${LBUFFER[(ws:__CURSOR__:)2]}
    LBUFFER=${LBUFFER[(ws:__CURSOR__:)1]}
  else
    if [[ -z ${MATCH} ]]; then
      zle expand-or-complete
    else
      no-magic-abbrev-expand
    fi
  fi
}

magic-abbrev-expand-and-execute() {
  magic-abbrev-expand
  zle backward-delete-char
  zle accept-line
}

no-magic-abbrev-expand() {
  LBUFFER+=' '
}

expand-dots() {
    if [[ $LBUFFER =~ '\.\.\.+' ]]; then
        LBUFFER=$LBUFFER:fs%\.\.\.%../..%
    fi
}

zle -N magic-abbrev-expand
zle -N magic-abbrev-expand-and-execute
zle -N no-magic-abbrev-expand
zle -N expand-dots

bindkey "^I" magic-abbrev-expand              # tab
bindkey "^M" magic-abbrev-expand-and-execute  # return
bindkey "^@" no-magic-abbrev-expand           # ctrl+space
bindkey -M isearch " " self-insert
