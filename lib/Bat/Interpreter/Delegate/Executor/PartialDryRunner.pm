package Bat::Interpreter::Delegate::Executor::PartialDryRunner;

use utf8;

use Moose;
use namespace::autoclean;

with 'Bat::Interpreter::Role::Executor';

# VERSION

=encoding utf-8

=head1 NAME

Bat::Interpreter::Delegate::Executor::PartialDryRunner - Executor for executing for commands and printing out the rest

=head1 SYNOPSIS


     
=head1 DESCRIPTION

This executor tries to get all the commands that are going to be executed, that is, it's like every
command gets "echoed" in the "standard output" as an array of lines

The commands printed can be different to the real execution if the bat/cmd file makes 
some sort of conditional using ERRORLEVEL 

=head1 METHODS

=cut

has 'commands_executed' => (
    is => 'ro',
    isa => 'ArrayRef',
    traits => ['Array'],
    default => sub { [] },
    handles => {
        add_command => 'push'
    }
);

sub execute_command {
    my $self = shift();
    my $command = shift();
    $self->add_command($command);
    return 0;
}

sub execute_for_command {
    my $self = shift();
    my $command = shift();
    my $output = `$command`;
    chomp $output;
    return $output;
}

1;
