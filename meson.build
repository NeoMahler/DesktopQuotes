project('com.github.neomahler.desktopquotes', 'vala', 'c')

executable(
    meson.project_name (),
    'src/Application.vala',
    'src/Content.vala',
    'src/MainWindow.vala',
    'src/Widgets/ModeSwitch.vala',
    dependencies: [
        dependency ('glib-2.0'),
        dependency ('gtk+-3.0')
    ],
    install: true
)

#Install our .desktop file so the Applications Menu will see it
install_data(
    join_paths('data', meson.project_name() + '.desktop'),
    install_dir: join_paths(get_option('datadir'), 'applications')
)

install_data(
    join_paths('data', meson.project_name() + '.appdata.xml'),
    install_dir: join_paths(get_option('datadir'), 'metainfo')
)
