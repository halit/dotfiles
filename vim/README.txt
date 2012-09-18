--------------------------------------------------------------------------
Getting Started: Initial setup of Vim config and help with plugins
--------------------------------------------------------------------------

    (1) You've already downloaded the dotfiles from github

    (2) Setup symlinks in your home folder for .vim folder, .vimrc and .vim_commonrc

    (3) Setup personal font and screen choices in .vimrc

        Some examples:

        set guifont=Droid\ Sans\ Mono:h12       " Download Droid Sans Mono font
        set guifont=Menlo\ Regular:h12          " Font that OSX Terminal defaults to
        set guifont=Monaco:h10
    
        I also:
            - turned off noantialias
            - commented out "set t_Co=256" line since this was causing Vim (in Terminal)
                to have blinking text
            - changed the default height & width
            - set some transparency
            
    (4) So that $PATH is set correctly for running pep8, in MacVim preferences,
        check "Launch Vim process in a login shell"

----------------------------------------------
WHICH PLUGINS ARE INSTALLED, AND HOW DO I USE?
----------------------------------------------

    Keyboard shortcuts are in .vimrc.
    
    Look here to start playing with all the plugins.
    
    e.g.
    
        <leader> is a ,

        tt  ->  :TlistToggle
        <leader>x  ->  :NERDTreeToggle

--------------------------------
PLUGIN DEPENDENCIES / PYTHON IDE
--------------------------------

    Install PyFlakes into /usr/bin/python

        cd dotfiles/.vim/ftplugin/python/pyflakes
        sudo /usr/bin/python setup.py install

    Taglist (using Exuberant Ctags)

        Install Exuberant Ctags
        - Compile (see INSTALL): http://ctags.sourceforge.net/
        - Try running ctags to see if it's on the path: $ ctags

        NOTE: I was getting an "ctags: illegal option" error.  Turns out I had an
        incorrect ctags already installed on my machine in /usr/bin which was
        being called instead of /usr/local/bin. I renamed my /usr/bin one.

    PEP8 Support

        a) Grab it from git://github.com/jcrocholl/pep8.git
        b) cd pep8
        c) /usr/bin/python setup.py install

    Ack (instead of Grep)
    
        Install from http://betterthangrep.com/ -- I picked standalone:
        
        $ curl http://betterthangrep.com/ack-standalone > /usr/local/bin/ack && chmod 0755 !$
------------------------
TO DEBUG PLUGIN PROBLEMS
------------------------
    $ vim -D
    
    (not sure how to run debug mode when launching macvim?!)
