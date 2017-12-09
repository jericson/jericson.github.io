---
layout: default
---

## Ruby Language
# Installation

{% raw %}

## Linux - Compiling from source
`This way you will get the newest ruby but it has its downsides. Doing it like this ruby will not be managed by any application.

**!! Remember to chagne the version so it coresponds with your !!**

 1. you need to download a tarball find a link on an official website (https://www.ruby-lang.org/en/downloads/)
 2. Extract the tarball
 3. Install


    $> wget https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.3.tar.gz
    $> tar -xvzf ruby-2.3.3.tar.gz
    $> cd ruby-2.3.3
    $> ./configure
    $> make
    $> sudo make install

This will install ruby into `/usr/local`. If you are not happy with this location you can pass an argument to the `./configure --prefix=DIR` where `DIR` is the directory you want to install ruby to.

---

## Linux—Installation using a package manager
Probably the easiest choice, but beware, the version is not always the newest one. Just open up terminal and type (depending on your distribution)

in Debian or Ubuntu using apt

    $> sudo apt install ruby

in CentOS, openSUSE or Fedora

    $> sudo yum install ruby

You can use the `-y` option so you are not prompted to agree with the installation but in my opinion it is a good practice to always check what is the package manager trying to install.


---

## Windows - Installation using installer
Probably the easies way to set up ruby on windows is to go to http://rubyinstaller.org/ and from there donwload an executable that you will install. 

You don't have to set almost anything, but there will be one important window. It will have a check box saying *Add ruby executable to your PATH*. Confirm that it is **checked**, if not check it or else you won't be able to run ruby and will have to set the PATH variable on your own. 

Then just go next until it installs and thats that. 

---

## Gems
In this example we will use 'nokogiri' as an example gem. 'nokogiri' can later on be replaced by any other gem name.

To work with gems we use a command line tool called `gem` followed by an option like `install` or `update` and then names of the gems we want to install, but that is not all.

Install gems:

    $> gem install nokogiri

But that is not the only thing we need. We can also specify version, source from which to install or search for gems. Lets start with some basic use cases (UC) and you can later on post request for an update.

Listing all the installed gems:

    $> gem list

Uninstalling gems:

    $> gem uninstall nokogiri

If we have more version of the nokogiri gem we will be prompted to specify which one we want to uninstall. We will get a list that is ordered and numbered and we just write the number.

Updating gems

    $> gem update nokogiri

or if we want to update them all

    $> gem update

Comman `gem` has many more usages and options to be explored. For more please turn to the official documentation. If something is not clear post a request and I will add it.



---

## Linux - troubleshooting gem install
First UC in the example **Gems**
`$> gem install nokogiri` can have a problem installing gems because we don't have the permissions for it. This can be sorted out in more then just one way.

First UC solution a:

U can use `sudo`. This will install the gem for all the users. This method should be frowned upon. This should be used only with the gem you know will be usable by all the users. Usualy in real life you don't want some user having access to `sudo`.

    $> sudo gem install nokogiri

First UC solution b

U can use the option `--user-install` which installs the gems into your users gem folder (usualy at `~/.gem`)

    &> gem install nokogiri --user-install

First UC solution c

U can set GEM_HOME and GEM_PATH wich then will make command `gem install` install all the gems to a folder which you specify. I can give you an example of that (the usual way)
- First of all you need to open .bashrc. Use nano or your favorite text editor.


    $> nano ~/.bashrc

- Then at the end of this file write


    export GEM_HOME=$HOME/.gem
    export GEM_PATH=$HOME/.gem

- Now you will need to restart terminal or write `. ~/.bashrc` to re-load the configuration. This will enable you to use `gem isntall nokogiri` and it will install those gems in the folder you specified.

---

## Installing Ruby macOS
So the good news is that Apple kindly includes a Ruby interpreter. Unfortunately, it tends not to be a recent version:

    $ /usr/bin/ruby -v
    ruby 2.0.0p648 (2015-12-16 revision 53162) [universal.x86_64-darwin16]

If you have [Homebrew installed](https://brew.sh/), you can get the latest Ruby with:

    $ brew install ruby

    $ /usr/local/bin/ruby -v
    ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-darwin16]

(It's likely you'll see a more recent version if you try this.)

In order to pick up the brewed version without using the full path, you'll want to add `/usr/local/bin` to the start of your `$PATH` environment variable:

    export PATH=/usr/local/bin:$PATH

Adding that line to `~/.bash_profile` ensures that you will get this version after you restart your system:

    $ type ruby
    ruby is /usr/local/bin/ruby

Homebrew will install `gem` for [installing Gems](http://stackoverflow.com/documentation/ruby/8095/installation/26101/gems#t=201705160348432566101). It's also possible to [build from the source](http://stackoverflow.com/documentation/ruby/8095/installation/26098/linux-compiling-from-source#t=201705160348432566101) if you need that. Homebrew also includes that option:

    $ brew install ruby --build-from-source

---

Created by:
* [Saša Zejnilović](https://stackoverflow.com/users/5594180)
* [Kathryn](https://stackoverflow.com/users/7948068)

This content was ported over from Stack Overflow Documentation, now retired. To access the source and attribution please access the [Docs archive](https://archive.org/details/documentation-dump.7z) and reference topic ID: [8095](https://web.archive.org/web/*/http://stackoverflow.com/documentation/contributors/topic/8095).

All user contributions licensed under [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/) with [attribution required]("https://stackoverflow.blog/2009/06/25/attribution-required/).

{% endraw %}
