package Bat::Interpreter::Role::Executor;

use utf8;

use Moose::Role;
use namespace::autoclean;

# VERSION

=encoding utf-8

=head1 NAME

Bat::Interpreter::Role::Executer - Role for executing the commands in the bat files

=head1 SYNOPSIS


     
=head1 DESCRIPTION

Role for executing the commands in the bat files. With this role you can just
print the commands that are going to be executed (dry run), or maybe in another
machine (via SSH, RPC, or whatever)

=head1 METHODS

=cut

requires 'execute_command';

requires 'execute_for_command';

1;
