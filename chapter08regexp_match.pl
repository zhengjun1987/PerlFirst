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
# 		================================================================================
# 		2018-8-8 23:23:34
# 		~/Desktop/PerlFirst/chapter08regexp_match.pl
# 		--------------------------------------------------------------------------------
# 		In that case, I recommend you go bowling.
# 		In that case, I recommend you go drinking.
# 		mentioned fred after barney!

$_ = chr(0xBD);
my $OE = chr(0xBC);
say '$OE = '.$OE;
if(/$OE/i){
	say 'Found $OE';
}

my $text = "I dreamt of betty rubble.";
if($text =~ /\brub/i){
	say "Ah,there is a rub.";
}

# 	say "Do you like perl?";
# 	my $likes = (<STDIN> =~ /\byes\b/i);
# 	if($likes){
# 		say "You said that you like perl earlier...";
# 	}

$_ =  "Hello there, neighbor";
if(/\s(\w+)/a){
	say "The word is $1";
}
# 		The word is there

if(/(\S+) (\S+), (\S+)/){
	say "words are: $1,$2,$3.";
}
# 		words are: Hello,there,neighbor.

my $dino = "I fear that I will be extinct after 1000 years.";
if($dino =~ /(\d*) years/){
	say "That said $1 years.";
}
# 			That said 1000 years.

$dino = "I fear that I will be extinct after a few millon years.";
if($dino =~ /(\d*) years/){
	say "That said '$1' years.";
}
# 			That said '' years.