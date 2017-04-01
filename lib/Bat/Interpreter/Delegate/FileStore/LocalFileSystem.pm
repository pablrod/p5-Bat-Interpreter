package Bat::Interpreter::Delegate::FileStore::LocalFileSystem;

use utf8;

use Moose;
use Path::Tiny;
use namespace::autoclean;

with 'Bat::Interpreter::Role::FileStore';

# VERSION

=encoding utf-8

=head1 NAME

Bat::Interpreter::Delegate::FileStore::LocalFileSystem - 

=head1 SYNOPSIS


     
=head1 DESCRIPTION

Accessing bat files via local file system

=head1 METHODS

=cut

sub get_contents {
    my $self = shift();
    my $filename = shift();
    $filename = Path::Tiny::path($filename);
    return $filename->slurp;
}

1;
