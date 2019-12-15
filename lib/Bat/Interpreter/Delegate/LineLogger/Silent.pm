package Bat::Interpreter::Delegate::LineLogger::Silent;

use utf8;

use Moo;
use Types::Standard qw(ArrayRef);
use namespace::autoclean;

with 'Bat::Interpreter::Role::LineLogger';

# VERSION

=encoding utf-8

=head1 NAME

Bat::Interpreter::Delegate::LineLogger::Silent - LineLogger that just don't log anything

=head1 SYNOPSIS

    use Bat::Interpreter;
    use Bat::Interpreter::Delegate::LineLogger::Silent;

    my $silent_line_logger = Bat::Interpreter::Delegate::LineLogger::Silent->new;

    my $interpreter = Bat::Interpreter->new(linelogger => $silent_line_logger);
    $interpreter->run('my.cmd');
     
=head1 DESCRIPTION

This line logger just discards every line so nothing get logged or printed on STDOUT

=head1 METHODS

=cut

=head2 log_line

=cut

sub log_line {
    my $self = shift();
    return 0;
}

1;
