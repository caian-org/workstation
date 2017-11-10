```
     _____          ___                       ___                                   ___           ___
    /  /::\        /  /\          ___        /  /\      ___                        /  /\         /  /\
   /  /:/\:\      /  /::\        /  /\      /  /:/_    /  /\                      /  /:/_       /  /:/_
  /  /:/  \:\    /  /:/\:\      /  /:/     /  /:/ /\  /  /:/      ___     ___    /  /:/ /\     /  /:/ /\
 /__/:/ \__\:|  /  /:/  \:\    /  /:/     /  /:/ /:/ /__/::\     /__/\   /  /\  /  /:/ /:/_   /  /:/ /::\
 \  \:\ /  /:/ /__/:/ \__\:\  /  /::\    /__/:/ /:/  \__\/\:\__  \  \:\ /  /:/ /__/:/ /:/ /\ /__/:/ /:/\:\
  \  \:\  /:/  \  \:\ /  /:/ /__/:/\:\   \  \:\/:/      \  \:\/\  \  \:\  /:/  \  \:\/:/ /:/ \  \:\/:/~/:/
   \  \:\/:/    \  \:\  /:/  \__\/  \:\   \  \::/        \__\::/   \  \:\/:/    \  \::/ /:/   \  \::/ /:/
    \  \::/      \  \:\/:/        \  \:\   \  \:\        /__/:/     \  \::/      \  \:\/:/     \__\/ /:/
     \__\/        \  \::/          \__\/    \  \:\       \__\/       \__\/        \  \::/        /__/:/
                   \__\/                     \__\/                                 \__\/         \__\/


 # A collection of all my dotfiles and custom configurations.

```


## Table of Contents

 - [About](#about)
 - [What's Inside?](#whats-inside)
 - [Structure](#structure)
 - [Goals and Principles](#goals-and-principles)
 - [Quickstart](#quickstart)
 - [Documentation](#documentation)
 - [Printscreens](#printscreens)
 - [Thanks](#thanks)
 - [Contact & Suggestions](#contact--suggestions)
 - [License and Usage](#license-and-usage)


## About

 > Dotfiles are plain text configuration files on Unix-y systems for things like
 > our shell, ~/.zshrc, our editor in ~/.vimrc, and many others. They are called
 > "dotfiles" as they typically are named with a leading . making them hidden
 > files on your system, although this is not a strict requirement.
 > Since these files are all plain text, we can gather them together in a git
 > repository and use that to track the changes you make over time.

 -- From [Thoughtbot](https://thoughtbot.com/upcase/videos/intro-to-dotfiles).

 > "Rice" is a word that is commonly used to refer to making visual improvements
 > and customizations on one's desktop. It was inherited from the practice of
 > customizing cheap Asian import cars to make them appear to be faster than they
 > actually were - which was also known as "ricing". Here on /r/unixporn, the
 > word is accepted by the majority of the community and is used sparingly to
 > refer to a visually attractive desktop upgraded beyond the default.

 -- From [/r/unixporn](https://www.reddit.com/r/unixporn/wiki/themeing/dictionary).

 __TL;DR__: Your dotfiles are how you personalize your system. Rice is a practice
 of creating visually appealing envinroments.

 I maintain this repository as a home for my dotfiles (which are also used to
 rice my system).


## What's Inside?

 Every single configuration file that I actively use on my system.
 It include (but not limited to) custom configurations for the shell, the
 terminal emulator, text editor, file browser, etc.

 And the list is getting bigger over time.

 For a comprehensive list of things that I use (not limited to ricing),
 you should see the [documentation](#documentation).


## Structure

 I try to maintain my configuration files as much `.config`-centered as possible.
 If you use that much of CLI programs (like I do), believe me: sooner or later
 you'll have a cluttered home folder; that's why the `.config`-centered approach
 makes sense.

 However, sometimes it is just impossible to do that, even with symbolic
 links and such hacks like this; one good exemple of that is `.emacs`, that __by
 force of will__, only works if located on the home folder.

 That said, the repository is structured in a way that mimics the files location
 of my own machine. Program-specific configuration files rests at the `.config`
 directory, within a directory with the same name. E.g.: `.config/i3` contains
 the configurations for i3-gaps (and any other i3-related stuff).

 Files outside `.config` belongs to the home folder (like my `.vimrc` or `.zshrc`).


## Goals and Principles

 Ricing a system is a constant work in progress. Mine is no different, but it
 has certain goals and principles that guides it. They are:

 * __Keyboard-centrality__: Since GUIs took over the user experience in personal
  computers, the mouse became the de _facto tool_ for control and navigation of
  the system. The idea of a keyboard-centric system is to remove the responsability
  of the mouse of doing +90% of common actions (like open a program or change the
  active window). This approach allows me to work in a more efficient way (with
  way more fast actions), in a more ergonomic design (my hands are always in the
  same place).

 * __Easiness__: I not only want the number of key presses I have to make the
   minimum as possible, but that they also works in a "natural" way. If I want to
   open Firefox, it is somewhat logical that the keybinding for it would use the
   letter F. This principle (borrowed from Vim) is widely applied within this rice.

 * __Aesthetically coherent__: Although the possibility of customize every corner
   of the system might sounds fun (and I can ensure it is), it is not an easy task
   to create an aesthetically coherent visual inside your system. Not everyone has
   the ability to make good color palletes, and I am no different. Even when
   everything is put in the right way, it's easy to get bored of your own system
   and the way it looks. Trying to solve this problem, I created one little script
   (that uses pywal) that automagically chooses one of my wallpapers, creates a
   color palette of it and updates the terminal emulator and other programs (Rofi
   and Bumblebee Status, for example). This script is runned when the system
   starts, meaning that I have a completely different visual on each startup.
   For more information about it, you should check [this](https://github.com/caianrais/rwal)
   repository.

 * __Minimalism__: I think it speaks for itself. The bare minimum possible
   (programs and dependencies), consuming few resources (CPU, RAM, etc), in a
   simple way of doing (CLI-based for the win). Bloated system? No, thank you
   very much.


## Quickstart

 I (still) don't have a magic script that install all my customizations to a brand
 new machine.

 The thing with customizations is that they are very, very personal (to your taste
 and workflow). Also, ricing a system depends heavelly on how willing you are to
 mess around things, write your own scripts/dotfiles, research about it etc. It's
 the kind of thing you probably wants to do on your vacation or during a long
 hollyday.

 So my best advice to quickstart is:

   * Find some good tutorials on the internet;
   * Look at my configuration files;
   * Finds out what serves you best;
   * Apply to your customization.


## Documentation

 Below you can check the documentations that I've wrote concerning some aspects
 of my system.

   *  [The Warez List](docs/warezlist.md): A curated list of programs, utilities and
      scripts that I use, organized by category.
   *  [System's Keybindings Cheatsheet](docs/keybindings-cheatsheet.md): A
      descriptive guide of keyboard shortcuts used to control and navigate my system.

## Printscreens

 ![Theme #0](docs/img/0.png)
 ![Theme #1](docs/img/1.png)
 ![Theme #2](docs/img/2.png)
 ![Theme #3](docs/img/3.png)
 ![Theme #4](docs/img/4.png)
 ![Theme #5](docs/img/5.png)


## Thanks

 I've been lurking around the unixporn subreddit and some dotfiles repositories
 at Github in the past months and decided to build my own. I've decided to make
 it public to help other people in the same situation I were at the beginning.

 To a total newbie, it could be very hard, slow and sometimes stressful make a
 decent, coherent and visually pleasing customization. I hope my ricing could
 give you some directions and insights in making your own.

 In that sense, I would like to thank [Luke Smith](https://github.com/lukesmithxyz)
 for his [dotfiles](https://github.com/LukeSmithxyz/voidrice) and his
 [YouTube channel](https://www.youtube.com/channel/UC2eYFnH61tmytImy1mTYvhA).
 [Alex Booker](https://github.com/bookercodes) for his wonderful tutorials on
 [i3wm](https://www.youtube.com/playlist?list=PL5ze0DjYv5DbCv9vNEzFmP6sU7ZmkGzcf)
 and the people at the [unixporn subreddit](https://www.reddit.com/r/unixporn/).


## Contact & Suggestions

 Have something to say? Great! I'll love to hear you.

 Don't be shy and feel free to reach me by email at
 [caianrais@protonmail.com](mailto:caianrais@protonmail.com).


## License and Usage

 For the sake of simplicity and permissiveness, the whole thing is licensed
 under the MIT License. For more information, you should check the
 [LICENSE](LICENSE).
