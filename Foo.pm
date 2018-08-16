#!/usr/bin/perl
use 5.010;
use strict;
use warnings;



package Foo;
sub bar {
    say "Hello,$_[0]!";
}
sub blat {
    say "Hey,$_[0]!";
}
1;