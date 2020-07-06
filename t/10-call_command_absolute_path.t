#!/usr/bin/env perl -w

use strict;
use warnings;
use utf8;

use Test::More tests => 1;
use English qw( -no_match_vars );
use Bat::Interpreter;
use Path::Tiny;

use Data::Dumper;

my $interpreter = Bat::Interpreter->new;

my $cmd_file = $PROGRAM_NAME;
$cmd_file =~ s/\.t/\.cmd/;

local $ENV{"CWD"} = Path::Tiny::path($0)->parent()->absolute()->canonpath();

$interpreter->run($cmd_file);

is_deeply(['cp file1 file2'], $interpreter->executor->commands_executed);