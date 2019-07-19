use Alien::Base::ModuleBuild;

my $builder = Alien::Base::ModuleBuild->new(
    module_name => 'Alien::Librdkafka',
    configure_requires => {
        'Alien::Base::ModuleBuild' => '1.00',
        'Module::Build' => '0.28',
    },
    test_requires => {
        'Test2::V0' => 0,
    },
    requires => {
        'Alien::Base' => '1.52',
        'parent'      => 0,
    },
    alien_autoconf_with_pic => 0,
    alien_name => 'rdkafka',
    alien_build_commands => [
      '%c --prefix=%s --enable-static',
      'make',
    ],
    alien_isolate_dynamic => 1,
    alien_repository => {
        protocol => 'https',
        exact_filename => 'https://github.com/edenhill/librdkafka/archive/v1.1.0.tar.gz',
        exact_version => 'v1.1.0',
    },
    alien_version_check => '%{pkg_config} --atleast-version 0.9.3 %n && %{pkg_config} --modversion %n',
    meta_merge => {
        resources => {
            homepage   => 'https://github.com/plicease/Alien-Librdkafka',
            bugtracker => 'https://github.com/plicease/Alien-Librdkafka/issues',
            repository => 'git://github.com/plicease/Alien-Librdkafka',
        },
        x_contributors => [
            'Pavel Shaydo <zwon@cpan.org>',
        ],
    },
);

$builder->create_build_script;
