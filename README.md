# VIM for RAILS

### What are you talking about?

I used to use TextMate, which was great, but then I moved to Sublime which was
awesome, and then I heard about VIM. At first, I thought anyone using VIM was
crazy, but after reading more and more about it, I think if you're programming long enough, you'll eventually switch
to VIM (or eMacs)

Unfortunately, setting up VIM for Rails is a pain in the a$$S!

So I created this, so anyone new could quickly get up and running with VIM

Disclaimer: I've done very little work except for setting up this repo. I did not create any of the wonderful plugins, VAM, or anything else related. I simply did a lot of research to find all the best plugins that work for me using Rails. 

### How?

1. Clone this repo

    You may also want to clone my snippets fork in order to customize them for your use. If you do, you will want to change the settings in the vimrc to reflect that change.

2. Run
```
ruby activate.rb
```

    Be warned: this will overwrite any existing .bash_profile, .bashrc, .vimrc, .gvimrc or .vim/ files you have in your home directory. Backup your dotfiles and then move them into your cloned repository without the leading . so you can save them to github before running this command!


3. Install dependencies, like git and hg for VAM (vim-addons-manager). You will also need syntax checkers installed if you want to use that feature such as jslint for javascript.

    Brew is your friend with Mac. Use Aptitude with Linux (at least ubuntu-based distros)

4. Run 
```
vim
```

VAM will download and setup .vim for all addons. You may have to try multiple
times for it to work properly. If you get stuck, press arrow-up. Weird. I
don't know why.

Good luck, and remember this is a work in progress since I am new to VIM.
