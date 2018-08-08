#! /usr/bin/perl
use 5.010;

$_ = 'Fred';
if(/fred/i){
	say "In that case, I recommend you go bowling.";
}
if(m%fred%i){
	say "In that case, I recommend you go drinking.";
}

$_ = "I saw Barney\ndown at the bowling alley\nwith Fred\nlast night.\n";
if(/barney(.)*fred/is){
	say "mentioned fred after barney!";
}

