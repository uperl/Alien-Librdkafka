use Alien::Base::ModuleBuild;

my $builder = Alien::Base::ModuleBuild->new(
    module_name => 'Alien::Librdkafka',
    configure_requires => {
        'Alien::Base::ModuleBuild' => '0.005',
        'Module::Build' => '0.28',
    },
    requires => {
        'Alien::Base' => '0.005',
    },
    alien_autoconf_with_pic => 0,
    alien_name => 'rdkafka',
    alien_repository => {
        protocol => 'https',
        exact_filename => 'https://github.com/edenhill/librdkafka/archive/0.9.1.tar.gz',
        exact_version => '0.9.1',
    },
    alien_version_check => '%{pkg_config} --atleast-version 0.9.1 %n && %{pkg_config} --modversion %n'
);

$builder->create_build_script;
