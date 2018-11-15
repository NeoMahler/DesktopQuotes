*Desktop Quotes* is a desktop widget app for elementary OS that displays a random quote from a TV show, film or book series.

It's forked from *Principles* by Cassidy James. The icon is from [Wikimedia Commons](https://commons.wikimedia.org/wiki/File:Circle-icons-quote.svg), reused under the CC-BY-SA 3.0 license.

## Developing and Building

If you want to hack on and build PopWisdom yourself, you'll need the following dependencies:

* libgtk-3-dev
* meson
* valac

Run `meson build` to configure the build environment and run `ninja test` to build and run automated tests

    meson build --prefix=/usr
    cd build
    ninja test

To install, use `ninja install`, then execute with `com.github.neomahler.desktopquotes`

    sudo ninja install
    com.github.neomahler.desktopquotes


## Other Platforms

Principles is made for elementary OS, but may have been built and made available elsewhere by community members. These builds may have modifications or changes and **are not provided or supported by me**.
