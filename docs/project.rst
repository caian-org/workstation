***********
The Project
***********

.. image:: icon.png


Prelude
=======

.. code-block:: text

        Dotfiles are plain text configuration files on Unix-y systems for
        things like our shell, ~/.zshrc, our editor in ~/.vimrc, and many
        others. They are called "dotfiles" as they typically are named with
        a leading . making them hidden files on your system, although this
        is not a strict requirement. Since these files are all plain text,
        we can gather them together in a git repository and use that to
        track the changes you make over time.

— From `Thoughtbot`_.


.. code-block:: text

        "Rice" is a word that is commonly used to refer to making visual
        improvements and customizations on one's desktop. It was inherited
        from the practice of customizing cheap Asian import cars to make them
        appear to be faster than they actually were - which was also known as
        "ricing". Here on /r/unixporn, the word is accepted by the majority o
        the community and is used sparingly to refer to a visually attractive
        desktop upgraded beyond the default.

— From `Reddit`_.


.. _Thoughtbot: https://thoughtbot.com/upcase/videos/intro-to-dotfiles
.. _Reddit: https://www.reddit.com/r/unixporn/wiki/themeing/dictionary


About
=====

**BEWARE: Here be dragons!**


Motivation
==========

*Constructive* lazyness, pure and simply.

Don't got it? Let me put it in another perspective:

I use this thing called *zsh*, which is a unix shell and command interpreter.
The Z Shell is like bash, but not so POSIX-compliant, making it somewhat more
flexible and extensible. On top of that I use *oh-my-zsh*, a zsh framework
that adds some functionalities (with plugins) and aesthetic improvements (with
themes) to the shell.

Through oh-my-zsh I use this nice thing called *powerlevel9k*, a theme that
mimics the *powerlevel* statusbar.

Everything sounds lovely, isn't? And is. Now make this happen from scratch.
Install zsh, then make it the default shell. Clone oh-my-zsh, put it in the
right place, make the necessary adjustments in the configuration file
(``.zshrc``) and test it. Now clone powerlevel9k, make oh-my-zsh use the theme
and apply even more customizations.

Multiply this kind of chore by ten (given the number of programs I use and the
extension of the customizations) and again by ten (given the recurrence in
which I format my system).

Very labour-intensive, indeed.

**Do it once and never again. That's the goal...**


What's Inside?
==============

**TODO**


Goals and Principles
====================

**TODO**

Keyboard-centrality
-------------------

Since the graphic interface took over the user experience in personal
computers, the mouse became the *de facto* tool for control and navigation of
the system. The idea of a keyboard-centric system is to remove the
responsability of the mouse of doing +90% of common actions (like open a
program or change the active window). This approach allows me to work in a more
efficient way (with way more fast actions), in a more ergonomic design (my
hands are always in the same place).

Easiness
--------

I do not only want that the number of key presses that I have to make the
minimum as possible, but also want that they work in a natural way. If I want
to open Firefox, it is somewhat logical that the keybinding for it would use
the letter F. This principle (borrowed from Vim) is widely applied within the
system.

Aesthetic Coherence
-------------------

Although the possibility of customize every corner of the system might sounds
fun (and I can ensure it is), it's not an easy task to create an aesthetically
coherent visual. Not everyone has the ability to make good color palletes, and
I'm no different. Even when everything is put at the right position, it's easy
to get bored of your own system and the way it looks. In some way, this is the
*main itchy* that brings users out there to rice their systems.

The answer for this problem (this is not actually a problem... it's more like a
compulsive disorder) is to delegate some bits of this to other algoritms.

In that case, I've created one little script (that uses pywal) that
automagically chooses one of my wallpapers, creates a color palette of it and
updates the terminal emulator and other programs (Rofi and Bumblebee Status,
for example). This script is runned when the system starts, meaning that I have
a completely different visual on each startup.

Minimalism
----------
I think it speaks for itself. The bare minimum possible (programs and
dependencies), consuming few resources (CPU, RAM, etc), at the simpler way.


Acknowledgements
================

**TODO**


Contact & Suggestions
=====================

**TODO**


License and Usage
=================

**TODO**
