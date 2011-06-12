package worky;
use 5.006001;
use strict;
use warnings;
our $VERSION = '0.10';

use orz -base;

sub pmc_use_means_no { 1 }

sub pmc_compile {
    my $self = shift;
    my $code = $self->SUPER::pmc_compile(@_);
    $code =~ s/^# orz/# This code no worky/;
    return $code;
}

1;

=head1 NAME

worky - For when your code no worky

=head1 SYNOPSIS

    {
        no worky;

        # failing code here
    }

=head1 DESCRIPTION

When your code no worky, just say so.

=head1 AUTHOR

Ingy döt Net <ingy@cpan.org>

=head1 COPYRIGHT

Copyright (c) 2006. Ingy döt Net. All rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>

=cut
