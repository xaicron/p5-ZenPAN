on configure => sub {
    requires 'Module::Build'                      => '0.4004';
    requires 'Module::Build::Pluggable::CPANfile' => '0.03';
};

requires 'OrePAN'             => '0.07';
requires 'App::cpanminus'     => '1.6000';
requires 'Capture::Tiny'      => '0.21';
requires 'Module::CPANfile'   => '0.9009';
requires 'CPAN::DistnameInfo' => '0.12';
requires 'Term::ANSIColor'    => '0';
requires 'Cwd'                => '0';
requires 'File::Which'        => '1.09';
requires 'File::Temp'         => '0';
requires 'File::Path'         => '0';
requires 'lib::core::only'    => '0';

recommends 'Minilla' => 'v0.0.53';

# for M::B
requires 'Software::License'  => '0.103005';

# for M::I
requires 'Module::Install' => '1.06';

on test => sub {
    requires 'Test::More'     => '0.98';
    requires 'Test::Requires' => '0.06';
};
