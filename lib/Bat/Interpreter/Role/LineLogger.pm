package Bat::Interpreter::Role::LineLogger;

use utf8;

use Moo::Role;
use namespace::autoclean;

# VERSION

=encoding utf-8

=head1 NAME

Bat::Interpreter::Role::LineLogger - Role for logging all the lines as are going evaluated by the interpreter

=head1 DESCRIPTION

Role for logging all the lines just before bein evaluated by the interpreter. This mean, all the
variables are substituted and manipulated. You can choose what to do with this lines, just printing them or whatever.

See Bat::Interpreter::Delegate::LineLogger::Silent for a simple example

=head1 METHODS

=head2 log_line

Just the line

=cut

requires 'log_line';

1;
