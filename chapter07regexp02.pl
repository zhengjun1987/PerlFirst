#! /usr/bin/perl
use 5.010;

$_ = "The HAL-9000 requires authorization to continue.\n";
if(/HAL-\d+/){
	say "The string mentions some model of HAL computer.";
}
if(/\s/a){
	say "The string matches ASCII whitespaces";
}
if(/\s/){
	say "The string matches ASCII whitespaces";
}
if(/\h/){
	say "The string matches horizontal whitespaces";
}
if(/\v/){
	say "The string matches vertical whitespaces";
}
if(/[\h\v]/){
	say "The string matches \\p{Space} whitespaces";
}