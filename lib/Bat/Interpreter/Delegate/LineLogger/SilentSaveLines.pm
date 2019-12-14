package Bat::Interpreter::Delegate::LineLogger::SilentSaveLines;

use utf8;

use Moo;
use Types::Standard qw(ArrayRef);
use namespace::autoclean;

with 'Bat::Interpreter::Role::LineLogger';

# VERSION

=encoding utf-8

=head1 NAME

Bat::Interpreter::Delegate::LineLogger::SilentSaveLines - LineLogger that just don't log anything but saves the lines for further inspection

=head1 SYNOPSIS

    use Bat::Interpreter;
    use Bat::Interpreter::Delegate::LineLogger::SilentSaveLines;

    my $silent_line_logger = Bat::Interpreter::Delegate::LineLogger::SilentSaveLines->new;

    my $interpreter = Bat::Interpreter->new(linelogger => $silent_line_logger);
    $interpreter->run('my.cmd');
    use Data::Dumper;
    print Dumper($silent_line_logger->lines);
     
=head1 DESCRIPTION

This line logger just discards every line so nothing get logged or printed on STDOUT. But saves the lines
for further inspection

=head1 METHODS

=cut

=head2 lines

Returns an ARRAYREF with all the lines logged

=cut

has 'lines' => (
    is => 'ro',
    isa => ArrayRef,
    default => sub { [] },
);

=head2 log_line

=cut

sub log_line {
    my $self = shift();
    push @{ $self->lines }, @_;
    return 0;
}

1;
