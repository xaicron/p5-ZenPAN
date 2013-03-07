use strict;
use warnings;
use Module::Build::Pluggable qw(CPANfile);

my $build = Module::Build::Pluggable->new(
    license        => 'perl',
    dynamic_config => 0,

    build_requires     => {},
    configure_requires => {},
    requires           => {
        perl => '5.010001',
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
