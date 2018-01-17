#!/bin/sh

# Pause music on screen lock -- don't pause music
#sh /usr/local/bin/music.sh stop

#font="System San Francisco Display"
font="SFNS-Display"

frosted='#ffffff22'  # clear ish

# Solarized dark colors
base03='#002b36b3'
base02='#073642ff'
base01='#586e75ff'
base00='#657b83ff'
base0='#839496ff'
base1='#93a1a1ff'
base2='#eee8d5ff'
base3='#fdf6e3ff'
yellow='#b58900ff'
orange='#cb4b16ff'
red='#dc322fff'
magenta='#d33682ff'
violet='#6c71c4ff'
blue='#268bd2ff'
cyan='#2aa198ff'
green='#859900ff'

i3lock                      \
-e                          \
-f                          \
\
--insidevercolor=$base03    \
--ringvercolor=$orange      \
\
--insidewrongcolor=$base03  \
--ringwrongcolor=$red       \
\
--insidecolor=$base03       \
--ringcolor=$base1          \
--linecolor=$base01         \
--separatorcolor=$blue      \
\
--textcolor=$base1          \
--timecolor=$base1          \
--datecolor=$base1          \
--keyhlcolor=$base03        \
--bshlcolor=$magenta        \
\
--screen 0                  \
--blur 10                   \
--clock                     \
--indicator                 \
--timestr="%T"              \
--timefont=$font            \
--datestr="%A, %F"          \
--datefont=$font            \
--refresh-rate=1            \
--veriftext="Verifying..."  \
--wrongtext="Wrong!"        \
--radius=110

# Original color settings
#B='#00000000'  # blank
#C='#ffffff22'  # clear ish
#D='#ff00ffcc'  # default
#T='#ee00eeee'  # text
#W='#880000bb'  # wrong
#V='#bb00bbbb'  # verifying
#
#./i3lock              \
#--insidevercolor=$C   \
#--ringvercolor=$V     \
#\
#--insidewrongcolor=$C \
#--ringwrongcolor=$W   \
#\
#--insidecolor=$B      \
#--ringcolor=$D        \
#--linecolor=$B        \
#--separatorcolor=$D   \
#\
#--textcolor=$T        \
#--timecolor=$T        \
#--datecolor=$T        \
#--keyhlcolor=$W       \
#--bshlcolor=$W        \
#\
#--screen 0            \
#--blur 5              \
#--clock               \
#--indicator           \
#--timestr="%T"  \
#--datestr="%A, %F" \

# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
