package Bat::Interpreter::Delegate::Executor::System;

use utf8;

use Moose;
use namespace::autoclean;

with 'Bat::Interpreter::Role::Executor';

# VERSION

=encoding utf-8

=head1 NAME

Bat::Interpreter::Delegate::Executor::PartialDryRunner - Executor for executing commands via perl system

=head1 SYNOPSIS


     
=head1 DESCRIPTION

Every command gets through system. So if you are in Linux using bash, bash will try to execute the command.

This executor is as dumb and simple as it can, be cautious.

=head1 METHODS

=cut

sub execute_command {
    my $self = shift();
    my $command = shift();
    return system($command);
}

sub execute_for_command {
    my $self = shift();
    my $command = shift();
    my $output = `$command`;
    chomp $output;
    return $output;
}

1;
