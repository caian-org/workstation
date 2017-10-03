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
 - [Quickstart](#quickstart)
 - [Printscreens](#printscreens)
 - [Thanks](#thanks)
 - [Contact & Suggestions](#contact--suggestions)


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
 rice my computer).


## What's Inside?

 A lot of things. And the list is getting bigger and bigger as time goes by.

 For a comprehensive list of things that I use (not limited to ricing),
 you should see my [Warez List](docs/WAREZ-LIST.md).


## Structure

 I try to maintain my configuration files as much `.config`-centered as possible.
 If I have the option to give the configuration file path to the application,
 I will. If you use that much of CLI programs (like I do), believe me, sooner or
 later you'll have a cluttered home folder; that's why the `.config`-centered
 approach makes sense.
 
 However, sometimes it is just impossible to do that, even with symbolic
 links and such hacks like this; one good exemple of that is `.emacs`, that __by force
 of will__, only works if located on the home folder.

 That said, the repository is structured in a way that mimics the files location of
 my own machine. Program-specific configuration files rests at the `.config` directory,
 within a directory with the same name. E.g.: `.config/i3` contains the configurations
 for i3-gaps (and any other i3-related stuff).

 Files outside `.config` belongs to the home folder (like my `.vimrc` or `.zshrc`).

 Beyond that, there's two important folders here:

   * `/docs/`: Contains some documentation about my rice. For example, a detailed
     keybinding cheatsheet for i3. 
   * `/scripts/`: Contains various scripts (probably written in bash script or python)
     related to my rice. One is for screen brightness management, the other is to reboot
     my network etc.


## Quickstart

 I (still) don't have a magic script that install all my customizations to a brand
 new machine; nor do I have the intention to do so.

 The thing with customizations is that they are very, very personal (to your taste
 and workflow). Also, ricing a system depends heavelly on how willing you are to mess
 around things, write your own scripts/dotfiles, research about it etc. It's the kind
 of thing you probably wants to do on your vacation or during a long hollyday.

 So my best advice to quickstart is:

   * Find some good tutorials on the internet;
   * Look at my configuration files;
   * Finds out what serves you best;
   * Apply to your customization.


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
 and the [unixporn subreddit](https://www.reddit.com/r/unixporn/).


## Contact & Suggestions

 If you have something to say about my dotfiles (good or bad), please do so by
 email. Recommendations are very welcome, too.

 Feel free to reach me at [caianrais@protonmail.com](mailto:caianrais@protonmail.com).
