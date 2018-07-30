#! /usr/bin/perl
use 5.012;
# 	my $bam_bam = 12;
# 	$bam_bam += 1;
# 	say '$bam_bam = '.$bam_bam;
# 			================================================================================
# 			2018年7月30日 00:21:14
# 			~/Desktop/chapter04strict.pl
# 			--------------------------------------------------------------------------------
# 			$bam_bam = 13

sub which_elemet_is{
	my $key = shift @_;
	my $index;
	foreach $index (0..$#_){
		if($key eq $_[$index]){
			return $index;
		}
	}
	$index;
}

# 	my @names = qw/ fred barney betty dino welma pebble bam-bam /;
# 	my $result = &which_elemet_is('dino',@names);
# 	say '$result = '.$result;
# 			================================================================================
# 			2018年7月30日 00:34:56
# 			~/Desktop/chapter04strict.pl
# 			--------------------------------------------------------------------------------
# 			$result = 3

sub list_from_a_to_b {
	if( $a < $b){
		return $a..$b
	}
	$b..$a
}

# 	$a = 11;
# 	$b = 5;
# 	my @array = list_from_a_to_b;
# 	say "@array";
# 
# 			================================================================================
# 			2018年7月31日 00:41:14
# 			~/Desktop/chapter04strict.pl
# 			--------------------------------------------------------------------------------
# 			5 6 7 8 9 10 11

sub marine{
	state $n = 0;
	$n += 1;
	say "Hello, sailor number $n!";
}

# 	marine;
# 	marine;
# 	marine;
# 	marine;
# 			================================================================================
# 			2018年7月31日 00:51:54
# 			~/Desktop/chapter04strict.pl
# 			--------------------------------------------------------------------------------
# 			Hello, sailor number 1!
# 			Hello, sailor number 2!
# 			Hello, sailor number 3!
# 			Hello, sailor number 4!

sub running_sum{
	state @numbers;
	state $sum = 0;
	foreach my$num (@_){
		push @numbers,$num;
		$sum += $num;
	}
	say "The sum of (@numbers) is $sum";
}

# 	running_sum (5,6);
# 	running_sum (1..3);
# 	running_sum (4);
# 			================================================================================
# 			2018年7月31日 00:59:14
# 			~/Desktop/chapter04strict.pl
# 			--------------------------------------------------------------------------------
# 			The sum of (5 6) is 11
# 			The sum of (5 6 1 2 3) is 17
# 			The sum of (5 6 1 2 3 4) is 21