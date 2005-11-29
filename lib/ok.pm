package ok;
$ok::VERSION = 0.01;

use strict;
use Test::More ();

sub import {
    shift; goto &Test::More::use_ok if @_;

    # No argument list - croak as if we are prototyped like use_ok()
    my (undef, $file, $line) = caller();
    ($file =~ /^\(eval/) or die "Not enough arguments for 'use ok' at $file line $line\n";
}


__END__

=head1 NAME

ok - Alternative to Test::More::use_ok

=head1 SYNOPSIS

    use ok( 'Some::Module' );

=head1 DESCRIPTION

With this module, simply change all C<use_ok> in test scripts to C<use ok>,
and they will be executed at C<BEGIN> time.

Please see L<Test::use::ok> for the full description.

=head1 COPYRIGHT

Copyright 2005 by Autrijus Tang C<E<lt>autrijus@autrijus.orgE<gt>>.

This program is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.

=cut
