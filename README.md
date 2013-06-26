# NAME

zenpan - yet yet another DarkPAN repository manager.

# SYNOPSIS

    # create local mirror
    # add modules from CPAN
    % zenpan add -p ./mirror Moo

    # add modules from cpanfile
    % zenpan add -p ./mirror

    # add modules from backpan
    % zenpan add -p ./mirror --mirror http://backpan.perl.org/

    % cat cpanfile
    # git URL
    requires 'DBIx::QueryLog' => do {
        $ENV{ZENPAN_MODE} ? {
            via    => 'git@github.com:xaicron/p5-DBIx-QueryLog.git',
            author => 'XAICRON', # default is DUMMY
        } : '0';
    };

    # tarballs URL
    requires 'App::envfile' => do {
        $ENV{ZENPAN_MODE} ? {
            via => 'http://cpan.metacpan.org/authors/id/X/XA/XAICRON/App-envfile-0.06.tar.gz',
    };

    # normal case
    requires 'SQL::Format' => '0';
    requires 'WWW::Google::Cloud::Messaging' => '0.03';

    # remove modules (TODO)
    % zepnan remove -p ./mirror SQL::Format
    % zenpan remove -p ./mirror XAICRON/App-envfile-0.06.tar.gz
    % zepnan remove -p ./mirror WWW::Google::Cloud::Messaging~0.03

    # reindex
    % zenpan reindex -p ./mirror

    # and use it
    % cpanm --mirror-only --mirror=file:///path/to/mirror SQL::Format

_zenfile_ foramt details are SEE ALSO `perldoc ZenPAN`.

# OPTIONS

    --path,    -p  Save archives path. (required)
    --help,    -h  Show usage.
    --verbose, -v  Chatty print,
    --version, -V  Show version.
    --mirror       Specify the base URL for the mirror (e.g. http://cpan.cpantesters.org/)

# COMMANDS

    add        Additional into local mirror path
    remove     Removeing modules from local mirror path (NOT IMPLEMENTED)
    reindex    Regen index file

# DESCRIPTION

ZenPAN is simple wrapper of [OrePAN](http://search.cpan.org/perldoc?OrePAN) and [cpanm](http://search.cpan.org/perldoc?cpanm).
Easy to create a DarkPAN from _git_, _tarball_, and _CPAN_.

# AUTHOR

Yuji Shimada <xaicron {@} GMAIL.COM>

# COPYRIGHT

Copyright 2013 - Yuji Shimada

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
