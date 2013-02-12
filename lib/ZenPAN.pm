package ZenPAN;

use strict;
use warnings;
use 5.008_001;
our $VERSION = '0.01';

1;
__END__

=encoding utf-8

=for stopwords

=head1 NAME

ZenPAN - yet yet another DarkPAN repository manager.

=head1 SYNOPSIS

  $cat zenfile
  # from git
  git@github.com:tokuhirom/Log-Pony.git TOKUHIOM

  # from local file (using OrePAN)
  /path/to/MyModule-0.01.tar.gz XAICRON

  # from cpan (using cpanm)
  JSON::WebToken
  App::envfile~0.06

  $ zenpan -p /path/to/repository zenfile
  ...

  $ cpanm --mirror=file:///path/to/repository MyModule
  Success!

=head1 DESCRIPTION

ZenPAN is simple wrapper of L<< OrePAN >> and L<< cpanm >>.
Easy to create a DarkPAN from I<< git >>, I<< tarball >>, and I<< CPAN >>.

=head1 AUTHOR

Yuji Shimada E<lt>xaicron {@} GMAIL.COME<gt>

=head1 COPYRIGHT

Copyright 2013 - Yuji Shimada

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<< OrePAN >>

L<< App::cpanminus >>

=cut
