##
# name:      worky
# abstract:  For when your code no worky
# author:    Ingy döt Net <ingy@ingy.net>
# license:   perl
# copyright: 2006, 2011
# see:
# - orz

use 5.008003;
package worky;
use strict;
use warnings;
our $VERSION = '0.11';

use orz 0.13 -base;

sub pmc_use_means_no { 1 }

sub pmc_compile {
    my $self = shift;
    my $code = $self->SUPER::pmc_compile(@_);
    $code =~ s/^# orz/# This code no worky/;
    return $code;
}

1;

=head1 SYNOPSIS

    {
        no worky;

        # failing code here
    }

=head1 DESCRIPTION

When your code no worky, just say so.
