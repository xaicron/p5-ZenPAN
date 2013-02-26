use strict;
use warnings;
use Module::Build;

my $build = Module::Build->new(
    license        => 'perl',
    dynamic_config => 0,

    build_requires     => {
        'Test::More'     => '0.98',
        'Test::Requires' => '0.06',
    },
    configure_requires => { 'Module::Build' => '0.38' },
    requires           => {
        perl                 => '5.010001',
        'OrePAN'             => '0',
        'App::cpanminus'     => '1.59_13',
        'Capture::Tiny'      => '0.21',
        'Module::CPANfile'   => '0.9009',
        'CPAN::DistnameInfo' => '0.12',
        'Carton'             => 'v0.9.4',
        'Term::ANSIColor'    => '0',
        'Cwd'                => '0',
        'File::Which'        => '1.09',
        'File::Temp'         => '0',
        'File::Path'         => '0',
    },

    no_index    => { 'directory' => [ 'inc' ] },
    name        => 'ZenPAN',
    module_name => 'ZenPAN',

    script_files => ['./bin/zenpan'],

    test_files           => (-d '.git' || $ENV{RELEASE_TESTING}) ? 't/ xt/' : 't/',
    recursive_test_files => 1,

    meta_merge => {
        resources => {
            repository => 'https://github.com/xaicron/p5-ZenPAN',
            bugtracker => 'https://github.com/xaicron/p5-ZenPAN/issues',
        },
    },

    create_readme  => 1,
    create_license => 1,
);

$build->create_build_script();
