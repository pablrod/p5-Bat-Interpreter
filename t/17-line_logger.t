#!/usr/bin/env perl -w

use strict;
use warnings;
use utf8;

use Test::More tests => 1;
use English qw( -no_match_vars );
use Bat::Interpreter;
use Bat::Interpreter::Delegate::LineLogger::SilentSaveLines;

my $silent_line_logger = Bat::Interpreter::Delegate::LineLogger::SilentSaveLines->new;

my $interpreter = Bat::Interpreter->new(linelogger => $silent_line_logger);

my $cmd_file = $PROGRAM_NAME;
$cmd_file =~ s/\.t/\.cmd/;

$interpreter->run($cmd_file);

my $expected_lines = [
           'ECHO off',
           '::  Comment1',
           'ECHO Testing line logger',
           ':: Comment2',
           'IF 130 GTR 14 GOTO label',
           ':label',
           'cp file1 file2'
];

is_deeply($silent_line_logger->lines, $expected_lines);


