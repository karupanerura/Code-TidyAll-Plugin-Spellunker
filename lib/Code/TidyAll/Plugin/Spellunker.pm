package Code::TidyAll::Plugin::Spellunker;
use 5.008001;
use strict;
use warnings;

use Moo;

our $VERSION = "0.01";

extends 'Code::TidyAll::Plugin';

use Spellunker;

sub validate_file {
    my ($self, $file) = @_;

    my $engine = Spellunker->new();

    open my $fh, '<', $file
        or die "$!: $file";

    my @errors;
    while (<$fh>) {
        my @words = $engine->check_line($_);
        push @errors, map +{ word => $_, line => $. }, @words if @words;
    }

    die join $/, map "Bad: $_->{word} at $file line $_->{line}", @errors if @errors;
}

1;
__END__

=encoding utf-8

=head1 NAME

Code::TidyAll::Plugin::Spellunker - It's new $module

=head1 SYNOPSIS

    use Code::TidyAll::Plugin::Spellunker;

=head1 DESCRIPTION

Code::TidyAll::Plugin::Spellunker is ...

=head1 LICENSE

Copyright (C) karupanerura.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

karupanerura E<lt>karupa@cpan.orgE<gt>

=cut

