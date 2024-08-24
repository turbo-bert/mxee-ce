See https://github.com/turbo-bert/mxee-ce/releases for the latest DMG. Avoid downloading the DMG with your browser to avoid quarantaine - better use your Terminal with `curl`:

    curl -L -O 'https://github.com/turbo-bert/mxee-ce/releases/download/0.0.1/mxee.dmg'

# What is mxee

If you do software development for a company on a company managed macbook or even on a private hardware it is always kind of the same stuff to do. Not only for yourself but also for your collegues.

You can script these things, or hack them into your ansible management, or just run them all by typing command after command. In the end to me it has been always the same.

- Installing HomeBrew
- Installing my personal Python Virtualenv in ~/venv
- Installing my IDE(s)
- Setting up the toolchain(s) with credentials, ssh, gpg, etc.
- Install all the fancy helper scripts accumulated over time somewhere in your ~/bin or PATH
- Keep everything up to date

I really do not like the manual, repetitive interaction. And I don't like that every collegue (unintentionally) does something in a little different way. It's just a waste of time not going full auto on this.

So this is my attempt to kind of standar-hack-dize it. If that makes sense. There is no magic. The source code should be available on GitHub and PyPI. You should always be able to run everything on your own, by hand. Consider this as kind of a precompiled documentation for my workstation setup. Maybe it turns out useful to you.

Be advised most of this stuff targets open source technology and your own tools written in Python. So if you're a standard xcode mac developer this is maybe not what you are looking for.

So mxee a fairly small ui application for macos that should help you settings things up. You can run it without any preparation. You should be able to set everything up once started. I guess the ui is not really nice and maybe not really self-explaning, sorry.

# Contact

Drop ALL dashes before sending:

    mxee--@mail--box--.--org

# License

BSD

# Bugs

Please use https://github.com/turbo-bert/mxee-ce/issues

# Donate

https://www.paypal.com/donate/?hosted_button_id=4EZE2QKKG29JE
