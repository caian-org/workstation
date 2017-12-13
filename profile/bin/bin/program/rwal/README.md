# rwal

```
     _____________________________
    !\__________________________/!\
    !!                          !! \
    !! $ ./rwal.sh              !!  \
    !!                          !!  !
    !! zsh: You're randomically !!  !
    !! beautiful now...         !!  !
    !!                          !!  !
    !! $_                       !!  !
    !!                          !!  /
    !!__________________________!! /
    !/__________________________\!/
       __\__________________/__/!_
      !________________________!/ )
    ________________________     (__
   /oooo  oooo  oooo  oooo /!    _  )_
  /ooooooooooooooooooooooo/ /   (_)_(_)
 /ooooooooooooooooooooooo/ /     (o o)
/C=_____________________/_/     ==\o/==
```

**R**andom **W**al (`rwal` in short) is a simple and straightforward script
that randomly selects one of the available wallpapers within your computer
and uses `pywal` to generate a beautiful colourscheme for your terminal-based
applications and other programs.

This is (still) a very raw implementation of one simple thing that I've wanted
to automate in my system: the generation and selection of "themes" based on my
favourite wallpapers.


## Requirements

`rwal` assumes that you use [i3wm](https://github.com/i3/i3)
(or [i3gaps](https://github.com/Airblader/i3)) and [pywal](https://github.com/dylanaraps/pywal).
It also requires `mapfile` (see more [here](http://wiki.bash-hackers.org/commands/builtin/mapfile)).

Giving the above requirements, `rwal` requires that you're using some distribution
of GNU/Linux that's also be compatible with those programs.


## How it Works?

The idea behind `rwal` is actually quite simple. First, the script uses a
predefined directory that should contain your wallpapers. This directory
should rest at `$HOME/Images/wp`. This can be easily modified within the
script, of course.

Then, `rwal` creates an array of every single file within this directory.
It generates a random number (where the maximum number is the quantity of files
available on that directory) and, based on this randomly generated number,
selects one of the files of the array.

After that, `rwal` uses `pywal` to generate a new colourscheme, runs the
"runners" and updates the i3 session.

Each "runner" is a simple secondary script that updates some applications that
`pywal` can't . For instance, the `bumblebee` status bar (my status bar of choice).
These "runners" uses template files to do that. Each template file is a
configuration file for that particular application, but with some "marks"
that helps the runner to update it.


## Usage

Just open your favourite terminal emulator (mine is [termite](https://github.com/thestinger/termite))
and type:

```sh
 $ ./rwal.sh
```


## Installation

The easiest way to do that is my copying the file to one of the locations
explicited by the system variable `$PATH`. E.g.:

```sh
$  cp rwal.sh /usr/local/bin/rwal.sh
```

Notice that the above command maybe require superuser privileges.

Don't forget to give an execution permission to this script:

```sh
 $ chmod +x rwal.sh
```

## TO-DO

Here follows some of my future expectations towards `rwal`:

 - [ ] A full-fledged command-line capability.
 - [ ] The possibility to define the location of the wallpaper folder.
 - [ ] A way to impossibilitate the script of using the same wallpaper
       twice in a row.
 - [ ] Unit tests (I have no idea how to do this with so many dependencies).


