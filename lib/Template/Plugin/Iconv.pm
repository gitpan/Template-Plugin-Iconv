package Template::Plugin::Iconv;
use 5.008008;
use strict;
our $VERSION = '1.00';

use base ('Template::Base');
use Text::Iconv;


sub load {
    my $class = shift;
    my $context = shift;
    return $class;
}

sub new {
    my $class = shift;
    my $context = shift;
    my $from = shift;
    my $to = shift;

    my $obj = Text::Iconv->new("$from", "$to");
    my $self = {_CONTEXT => $context, Iconv=>$obj};
    bless $self, $class;
}

sub convert {
    my $self = shift;
    my $text = shift;
    return $self->{'Iconv'}->convert("$text");
}

1;

__END__

=head1 NAME

Template::Plugin::Iconv - Text::Iconv for Template Toolkit

=head1 SYNOPSIS

  [% USE Iconv("cp1251", "utf-8") %]
  [% Iconv.convert("Text") %]

=head1 DESCRIPTION

Template::Plugin::Iconv is a plugin for TT.
The Text::Iconv module provides a Perl interface to the iconv() function as defined by the Single UNIX Specification.

=head1 AUTHOR

Kostya Ten E<lt>kostya@bk.ruE<gt>

=head1 SEE ALSO


L<Template>

L<Text::Iconv>


=head1 COPYRIGHT AND LICENSE

Copyright 2007 by Kostya Ten.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

