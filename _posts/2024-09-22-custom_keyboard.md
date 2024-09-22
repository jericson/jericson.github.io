---
layout: post
title: Building a custom keyboard
tags: programming
comments: yes
---

>  Every goal has a sequence swirling beneath it like the vortex of a
>  whirlpool.&mdash;["Sequences"](https://read.amazon.com/kp/embed?preview=inline&linkCode=kpd&ref=x_gr_w_preview_kcr_ca-20&asin=B00723IMRQ&tag=x_gr_w_preview_kcr_ca-20)
>  by Patrick F. McManus

It started when I noticed the "A" key on my keyboard turned
temperamental. Well, it really started before that because I noticed I
was misspelling a lot of words, which could be caused by any number of
problems:

* stress
* not getting enough rest
* boredom at work
* old age

But then I discovered that the "A" key on my keyboard only fired every
other time I pressed it. For years I've used [Logitech
keyboards](https://www.logitech.com/en-us/products/keyboards/k375s-multidevice-stand-combo.920-008165.html),
because I've found their devices to have a good quality to price
ratio. Maybe I was wrong since I have two K375s keyboards with failing
keys and I've disposed of two K750 solar powered keyboards that
stopped working altogether. 

My son, who is somehow old enough to be in college, let me borrow his
mechanical keyboard for a day or two. Most modern keyboards, including
the Logitech models I've used, use [dome
switches](https://en.wikipedia.org/wiki/Keyboard_technology#Dome-switch_keyboard). When
you press a keycap, it compresses a dome to complete the circuit on a
pressure-sensitive membrane underneath. By contrast, each keycap in a
mechanical keyboard is attached to its own individual switch. As a
result, mechanical keyboards tend to be more durable and can also be
repaired if a switch starts to fail.

Mechanical keyboards also tend to be expensive. The Logitech keyboard
I'm replacing costs $35 right now on Amazon. For that price, you can
buy [120 Gateron Red
switches](https://www.gloriousgaming.com/products/gateron-switches). The
board and keycaps are extra. Like any other hobby, keyboard
enthusiasts are willing to pay a premium to get what they want. As I
researched my options and wondered how anyone would pay so much for
purely cosmetic keycaps, I discovered the purely cosmetic [Lord of the
Rings keycaps](https://drop.com/featured/lotr). And so I'm typing this
post using this keyboard:

[![Dwarvish keyboard](/images/dwarf_keys.jpg)](/images_raw/dwarf_keys.jpg)

What you see in that picture cost an order of magnitude more than just
replacing my previous keyboard. But typing, which is my primary method
of working, is also an order of magnitude more satisfying with the new
keyboard. At the risk of [digging too
deep](https://tvtropes.org/pmwiki/pmwiki.php/Main/DugTooDeep), the
rest of this post covers what I bought, how I assembled it and the
sequence I'm still working through to get everything just right.

After buying the [Dwarvish (training) base
kit](https://drop.com/buy/drop-the-lord-of-rings-mt3-dwarvish-keycap-set?defaultSelectionIds=968640)
and the [Dwarvish
numpad](https://drop.com/buy/drop-the-lord-of-rings-mt3-dwarvish-keycap-set?defaultSelectionIds=968640)
keycaps[^1], I needed a board to put them on. Let me tell you there
are a lot of options:

![Full or 104 key layout](/images/keyboard-104.svg)
Full-size or 104 key (with an integrated number pad)

![TKL or 80% layout](/images/keyboard-80.svg)
Tenkeyless (TKL) or 80% (without a number pad)

![60% layout](/images/keyboard-60.svg)
60% (no arrow, navigation or function keys)

![40% layout](/images/keyboard-40.svg)

40% (no numbers)

(Images generated using [Keyboard Layout
Editor](http://www.keyboard-layout-editor.com/).)

Those are just the most popular choices. You might be wondering why
anyone would want fewer keys and the answer generally is to save desk
space. People who don't use the numeric key pad (AKA, ten key) prefer
not to have so much space taken up by those keys. This is especially
true of gamers who would prefer to keep their mouse near the WASD
keys, which is a common control scheme for [first-person
shooters](/2021/03/27/change_your_mind.html).

I didn't include the layout I picked which is called a 75% layout
because it's somewhere between 80% and 60%. I use my ten key quite a
bit thanks to a typing game[^2] my parents made me play before playing
other games on our computer. While I enjoyed learning to touch type, I
found the ten key training even more engaging because it was closer to
the sorts of games I really wanted to play. As it happens, I'm
competent (if not fast) when it comes to light data entry tasks.

My solution was to buy a separate ten key pad (and the separate
dwarvish num keycaps). That way I can put it nearby for when I need to
enter a number into a form, but push it aside when I need more room
for my mouse. (I'm going to talk about my keypad later in this post
for all the data entry fans.)

![Dwarf ten key and mouse](/images/dwarf_nums.jpg)

But back to the keyboard itself. I was interested in a more compact
keyboard that has arrow and navigation[^3], the truth is I got excited
about this particular board because of the rotary knob. By default the
knob controls sound volume (including mute if you push it down). But I
was much more excited about using it like an Atari paddle controller:

<iframe width="560" height="315" src="https://www.youtube.com/embed/tmG-DrgzW_I" title="YouTube video player" frameborder="0" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

This is possible because the GMMK Pro supports custom firmware. Out of
the box, it's a fairly standard setup, but with a bit of programming I
can remap the keys and change the way the key back-lights work. I did
have to look up how to set the keyboard to receive the new firmware
and [Reddit had the
answer](https://www.reddit.com/r/glorious/comments/mv6h4c/problem_flashing_gmmk_pro_with_qmk/).
It requires holding spacebar and `b` while plugging in the board. Since
most firmware puts the new firmware command on `function-\`, it's not
quite so annoying after the first time.

In order to get the setup I wanted, I created custom firmware using
QMK^[4] You can see [my code on
GitHub](https://github.com/jericson/qmk_firmware/blob/master/keyboards/jericson/keymap.c). The
critical changes are:

* Replacing `CAPS LOCK` with the Command/Win key (AKA: `KC_LGUI`) and
* Arraigning the bottom right row to be: Control, Alt/Option,
  Command/Win (`KC_LCTL, KC_LALT, KC_LGUI`).

When I started programming, `CAPS LOCK` was somewhat useful for
entering FORTRAN programs and theoretically helpful for SQL
keywords. But these days ALL CAPS makes people think you are yelling
and messes up password entry. An Emacs trick is mapping the key to
Control, but I find it slightly better to have emit the
Windows/Command keystroke.

Meanwhile, the way Windows and MacOS swap the two keys to the left of
the spacebar is particularly annoying. Since I have a MacBook, I just
use that layout instead of breaking my muscle memory. 

After using the keyboard for a few weeks, I discovered the spacebar
got stuck sometimes. Several keys on a mechanical keyboard require
stabilizers which keep wide keys from being depressed
unevenly. Spacebar is particularly troublesome since it covers the
width of 6 regular keys. So there's a wire that stretches under the
spacebar with spring-loaded pistons on either side to make sure the
entire spacebar moves the same distance up and down. The stock
stabilizers were prone to getting stuck, so the manufacturer offered a
discount on better quality stabilizers for people who reported this
problem.

When I got the GSV2 stabilizers, I opened the keyboard case for the
first time. Or rather, I tried to open it. One of the screws was
striped and wouldn't come out. Thankfully the company replaced my
initial keyboard at no cost. After replacing the stabilizers, it's
been functioning almost perfectly. 

Not long ago I replaced my "V" key, which was getting flaky. Replacing
the switch and going back to typing a moment later was immensely
satisfying.


Here's the final cost for my setup:

Item                                                         |    Cost
----                                                         |    ---:
GMMK PRO 75% Custom Keyboard (Black)                         | $169.99
Mechanical Keyboard Switches (Gateron)                       |  $34.99
GSV2 Premium Keyboard Stabilizers                            |   $4.99
Drop + The Lord of the Rings™ MT3 Training Dwarvish Base Kit | $109.00
Drop + The Lord of the Rings™ MT3 Dwarvish Numpad            |  $35.00
Darmoshark Mechanical Numeric Keypad                         |  $42.99
**Total**                                                    | **$396.96**




---

Footnotes:

[^1]: I bought them quickly because I was worried they would be sold
    out. 
    
[^2]: Not Mavis Beacon, but I believe a game called, imaginatively,
    "Typing Tutor". I'm pretty sure it was a later version of [this
    game](https://archive.org/details/TypingTutorWordInvaders/mode/2up)
    from Academy Software that also included the much more evocative
    ["Word Invaders"
    game](https://archive.org/details/a8b_Word_Invaders_1984_Academy_Software_US). It's
    kinda hard to Google this game because more recent typing games
    dominate the search results. I do know the game I played started
    on the home keys and advanced over time to include all letters,
    numbers, punctuation and the shift key. It also definitely
    included ten key training. It also introduced me to the word
    "jilt", which it included constantly in typing test.

[^3]: The four keys on the far right of [my
    board](/images_raw/dwarf_keys.jpg) from top to bottom are
    delete, page up, page down and end. But as we'll discuss in a bit,
    I can map them to anything I like and it would be an option to
    make the delete key be the home key instead.
    
[^4]: This stands for Quantum Mechanical Keyboard Firmware. At the
    time Glorious didn't support MacOS with their [Core
    software](https://www.gloriousgaming.com/pages/core). 

<!--  LocalWords:  keycap Logitech keycaps numpad
 -->
