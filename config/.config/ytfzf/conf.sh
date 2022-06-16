YTFZF_HIST=0 # history is on by default it can be set to -> 0 history off, 1: history on
YTFZF_LOOP=1 # if set to 1 it is on but normally it is off by default. Can be turned on using option -l
YTFZF_ENABLE_FZF_DEFAULT_OPTS=1 # fzf colors are going to be the one from your fzf configuration
FZF_PLAYER="mpv --fullscreen" # sets the video player used by ytfzf (mpv by default), e.g. FZF_PLAYER="devour mpv"; you can also specify the YTFZF_PLAYER_FORMAT, e.g. YTFZF_PLAYER_FORMAT="devour mpv --ytdl-format="


ytdl_pref="best"
#scrape 1 video link per channel instead of the default 2
sub_link_count=10
show_thumbnails=1

# Functions {{{
external_menu () {
     bg=$(cat ~/.cache/wal/colors | sed -n '11p')
     tr -d '\t' | dmenu -nb "#0f0f0f" -sb $bg -i -l 30 -p "$1"
}
# }}}


