This is an app that will (eventually) display random quotes from TV shows or book series on your desktop.

## Developing and Building

If you want to hack on and build PopWisdom yourself, you'll need the following dependencies:

* libgtk-3-dev
* meson
* valac

Run `meson build` to configure the build environment and run `ninja test` to build and run automated tests

    meson build --prefix=/usr
    cd build
    ninja test

To install, use `ninja install`, then execute with `com.github.neomahler.principles`

    sudo ninja install
    com.github.neomahler.principles


## Other Platforms

Principles is made for elementary OS, but may have been built and made available elsewhere by community members. These builds may have modifications or changes and **are not provided or supported by me**.
