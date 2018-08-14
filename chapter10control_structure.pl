#! /usr/bin/perl
use 5.010;
my $state = 62;
my $musk = 1 << 0;
unless ($state & $musk){
    say "星期日不用上班！";
}
#        192:PerlFirst zhengjun$ perl chapter10control_structure.pl
#        星期日不用上班！

say "星期五要上班！" if $state & 1 << 5;
#        192:PerlFirst zhengjun$ perl chapter10control_structure.pl
#        星期五要上班！

{
    say "Please enter a number:";
    chomp(my $n = <STDIN>);
    my $root = sqrt $n;
    say "The square root of $n is $root";
}
#        Please enter a number:
#        2.4
#        The square root of 2.4 is 1.54919333848297

my @people = qw/fred barney bam-bam wilma dino barney  betty pebbles/;
my %seen;
foreach (@people){
    say "I've seen you somewhere before, $_" if $seen{$_}++;
}
#        I've seen you somewhere before, barney

