#! /usr/bin/perl
use 5.014;

my %family_name;
$family_name{'fred'} = 'flintstone';
$family_name{'barney'} = 'rubble';

foreach my $person (qw/barney fred/){
	say "I've heard of $person $family_name{$person}.";
}
# 
# 		================================================================================
# 		2018年8月5日 23:20:30
# 		~/Desktop/chapter06hash.pl
# 		--------------------------------------------------------------------------------
# 		I've heard of barney rubble.
# 		I've heard of fred flintstone.

$family_name{'fred'} = 'flintstone';
$family_name{'betty'} .= $family_name{'barney'};

say $family_name{'lincoln'};
my @array = %family_name;
say "@array";
# 		================================================================================
# 		2018年8月5日 23:38:11
# 		~/Desktop/chapter06hash.pl
# 		--------------------------------------------------------------------------------
# 		betty rubble fred flintstone barney rubble

my %last_name = (
	fred => 'flintstone',
	dino => undef,
	barney => 'rubble',
	betty => 'rubble'
);

my @k = keys %last_name;
say "@k";

my @v = values %last_name;
say "@v";
# 		================================================================================
# 		2018年8月5日 23:51:00
# 		~/Desktop/chapter06hash.pl
# 		--------------------------------------------------------------------------------
# 		fred dino barney betty
# 		flintstone  rubble rubble

my $key,$value;
while (($key,$value) = each %last_name){
}