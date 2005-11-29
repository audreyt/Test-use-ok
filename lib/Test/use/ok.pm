package Test::use::ok;
$Test::use::ok::VERSION = 0.01;
__END__

=head1 NAME

Test::use::ok - Alternative to Test::More::use_ok

=head1 VERSION

This document describes version 0.01 of Test::use::ok, released November 29, 2005.

=head1 SYNOPSIS

    use ok( 'Some::Module' );

=head1 DESCRIPTION

According to the B<Test::More> documentation, it is recommended to run
C<use_ok()> inside a C<BEGIN> block, so functions are exported at
compile-time and prototypes are properly honored.

That is, instead of writing this:

    use_ok( 'Some::Module' );
    use_ok( 'Other::Module' );

One should write this:

    BEGIN { use_ok( 'Some::Module' ); }
    BEGIN { use_ok( 'Other::Module' ); }

However, people often either forget to add C<BEGIN>, or mistakenly group
C<use_ok> with other tests in a single C<BEGIN> block, which can create subtle
differences in execution order.

With this module, simply change all C<use_ok> in test scripts to C<use ok>,
and they will be executed at C<BEGIN> time.  The explicit space after C<use>
makes it clear that this is a single compile-time action.

=head1 SEE ALSO

L<Test::More>

=head1 COPYRIGHT

Copyright 2005 by Autrijus Tang C<E<lt>autrijus@autrijus.orgE<gt>>.

This program is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.

=cut
