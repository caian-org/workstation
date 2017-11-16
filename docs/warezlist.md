WAREZ LIST
==========

## Table of Contents

  - [About this List](#about-this-list)
  - [Side Notes](#side-notes)
  - [Categories](#categories)
    - [Rice](#rice)
    - [CLI Programs](#cli-programs)
    - [Network](#network)
    - [Security](#security)
    - [Utils](#utils)
    - [Compilers & Interpreters](#compilers--interpreters)
    - [Misc](#misc)

## About this List

  For me, [awesome lists](https://github.com/sindresorhus/awesome) are one of the
  greatest things in GitHub. I (unashamedly) spent hours visiting each one of them,
  especially [this one](https://github.com/agarrharr/awesome-cli-apps), dedicated
  to CLI programs.

  Since I use so many different programs, utilities and scripts; and since I'm so
  lazy about finding/searching stuff on the internet, I've decided to compile
  everything into a big, single list. __My own curated list of awesome things__.

  As time goes by and my setup gets increasingly complex, my workflow changes or
  I discover _even more awesome things_, this list will change: getting bigger,
  or smaller, or more segmented et cetera.

  Please bare in mind that this list is absolutely personal and does not reflect
  any kind of "top 10 something" that you probably see all the time on the
  internet. Also, when it comes to source, the Debian repository is my first
  option of choice; then comes GitHub (I don't know about you but sometimes I
  get sick of having to compile everything that is not packed). For this reason,
  I will link all I can to the official GitHub page or Debian package list website.

## Side Notes

  Here follows the significance of each side note that I've used in this document.
  Mainly for organization purposes.

  Signal | Representation | Description
  -------|----------------|------------
  Single star | `(*)` | Available in GitHub
  Double star | `(**)` | Available in the package manager
  Dolar sign | `($)` | Non-free package


## Categories

### Rice

  Type | Name
  -----|-----
  __Terminal Emulator__ | `(*)`  [termite](https://github.com/thestinger/termite)
  __Window Manager__ | `(*)` [i3-gaps](https://github.com/Airblader/i3)
  __Shell__ | `(**)` [zsh](https://packages.debian.org/stretch/zsh)
  __Status Bar__ | `(*)` [bumblebee-statusbar](https://github.com/tobi-wan-kenobi/bumblebee-status)
  __Window Compositor__ | `(*)` [compton](https://github.com/chjj/compton)
  __Application Launcher__ | `(*)` [rofi](https://github.com/DaveDavenport/rofi)
  __Terminal Multiplexer__ | `(*)` [tmux](https://github.com/tmux/tmux)
  __GTK Theme Manager__ | `(**)` [lxappearance](https://packages.debian.org/stretch/lxappearance)
  __GTK Greeter__ | `(**)` [lightdm-gtk-greeter](https://packages.debian.org/stretch/lightdm-gtk-greeter)
  __Screen Locker__ | `(*)` [i3lock](https://github.com/i3/i3lock)


### CLI Programs

  Type | Name
  -----|-----
  __File Manager__ | `(*)` [ranger](https://github.com/ranger/ranger)
  __System Information__ | `(*)` [neofetch](https://github.com/dylanaraps/neofetch)
  __Hangouts Client__ | `(*)` [hangups](https://github.com/tdryer/hangups)
  __Google Calendar Client__ | `(*)` [gcalcli](https://github.com/insanum/gcalcli)
  __Process Viewer__ | `(**)` [htop](https://packages.debian.org/stretch/htop)
  __Text Editor__ | `(**)` [vim](https://packages.debian.org/stretch/vim)
  __Torrent Daemon__ | `(**)` [transmission-daemon](https://packages.debian.org/stretch/transmission-daemon)
  __Torrent Client__ | `(**)` [transmission-cli](https://packages.debian.org/stretch/transmission-cli)
  __Music Player Daemon__ | `(**)` [mpd](https://packages.debian.org/stretch/mpd)
  __Music Player Client__ | `(**)` [mpc](https://www.musicpd.org/clients/mpc)
  __Music Player Client++__ | `(**)` [ncmpcpp](https://packages.debian.org/stretch/sound/ncmpcpp)


### Network

  Type | Name
  -----|-----
  __WHOIS Directory Lookup__ | `(**)` [whois](https://packages.debian.org/stretch/whois)
  __DNS Lookup__ | `(**)` [dig](https://packages.debian.org/stretch/dnsutils)
  __TPC/IP Swiss Knife__ | `(**)` [netcat](https://packages.debian.org/stretch/netcat)
  __Downloader__ | `(**)` [wget](https://packages.debian.org/stretch/wget)
  __Data Transfer__ | `(**)` [curl](https://packages.debian.org/stretch/curl)
  __Onion Router__ | `(**)` [tor](https://packages.debian.org/stretch/tor)
  __SSL__ | `(**)` [openssl](https://packages.debian.org/stretch/openssl)
  __HTTP Client__ | `(*)` [httpie](https://github.com/jakubroztocil/httpie)
  __Speedtest.net CLI__ | `(*)` [speedtest-net](https://github.com/ddsol/speedtest.net)


### Security

  Type | Name
  -----|-----
  __Firewall__ | `(**)` [gufw](https://packages.debian.org/stretch/gufw)
  __Password Manager__ | `(**)` [keepassx](https://packages.debian.org/stretch/keepassx) / `(**)` [kpcli](https://packages.debian.org/stretch/kpcli)
  __Encryption__ | `(**)` [gpg](https://packages.debian.org/stretch/gnupg)


### Utils

  Type | Name
  -----|-----
  __RAR Compression__ | `($)` [rar](https://packages.debian.org/stretch/rar)
  __RAR Extraction__ | `($)` [unrar](https://packages.debian.org/stretch/unrar)
  __ZIP Compression__ | `(**)` [zip](https://packages.debian.org/stretch/zip)
  __ZIP Extraction__ | `(**)` [unzip](https://packages.debian.org/stretch/unzip)
  __Image Viewer__ | `(*)` [feh](https://github.com/derf/feh)
  __FLAC Encoder/Decoder__ | `(**)` [flac](https://packages.debian.org/stretch/flac)
  __Clipboard Utility__ | `(**)` [xclip](https://packages.debian.org/stretch/xclip)
  __MP3 Encoder/Decoder__ | `(**)` [lame](https://packages.debian.org/stretch/lame)
  __Multimedia Swiss Knife__ | `(**)` [ffmpeg](https://packages.debian.org/stretch/ffmpeg)
  __PDF Reader__ | `(**)` [zathura](https://packages.debian.org/stretch/zathura)
  __Directory List__ | `(**)` [tree](https://packages.debian.org/stretch/tree)
  __GUI Text Editor__ | `(**)` [leafpad](https://packages.debian.org/stretch/leafpad)
  __Screenshot Capture__ | `(**)` [scrot](https://packages.debian.org/stretch/scrot)
  __Manuals__ | `(*)` [cheat](https://github.com/chrisallenlane/cheat)
  __Password Generator__ | `(**)` [pwgen](https://packages.debian.org/stretch/pwgen)


### Compilers & Interpreters

  - [golang](https://golang.org/)
  - [dart](https://www.dartlang.org/)
  - [haskell](https://www.haskell.org/)
  - [nodejs](https://nodejs.org/en/)
  - [gnu-cobol](https://sourceforge.net/projects/open-cobol/)


### Misc

  - `(*)` [cowsay](https://github.com/tnalpgge/rank-amateur-cowsay)
  - `(*)` [fortune](https://github.com/shlomif/fortune-mod)
  - `(*)` [cmatrix](https://github.com/abishekvashok/cmatrix)
  - `(*)` [pipes](https://github.com/pipeseroni/pipes.sh)
  - `(*)` [cliclock](https://github.com/nbyouri/cliclock)
  - `(*)` [figlet]()

