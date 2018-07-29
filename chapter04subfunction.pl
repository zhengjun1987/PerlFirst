#! /usr/bin/perl
use 5.010;
sub marine {
	$n += 1;
	say "Hello, sailor number $n!";
}

# 	&marine;
# 	&marine;
# 	&marine;
# 	&marine;
# 			================================================================================
# 			2018年7月29日 17:18:44
# 			~/Desktop/chapter04subfunction.pl
# 			--------------------------------------------------------------------------------
# 			Hello, sailor number 1!
# 			Hello, sailor number 2!
# 			Hello, sailor number 3!
# 			Hello, sailor number 4!

sub sum_of_barney_and_fred{
	say "Hello,you called sum_of_barney_and_fred!";
	$barney+$fred;
}

# 	$barney = 4;
# 	$fred = 3;
# 	$wilma = &sum_of_barney_and_fred;
# 	say "\$wilma = $wilma";
# 			================================================================================
# 			2018年7月29日 22:41:26
# 			~/Desktop/chapter04subfunction.pl
# 			--------------------------------------------------------------------------------
# 			Hello,you called sum_of_barney_and_fred!
# 			$wilma = 7

	sub max {
		say "参数长度\$\#_ = ".($#_+1);
		if($_[0] > $_[1]){
			$_[0];
		} else {
			$_[1];
		}
	}

# 	say "\&max(12,18) = ".(&max(12,18));
# 			================================================================================
# 			2018年7月29日 22:55:11
# 			~/Desktop/chapter04subfunction.pl
# 			--------------------------------------------------------------------------------
# 			参数长度$#_ = 2
# 			&max(12,18) = 18

sub max2 {
	my($result) = shift @_;
	foreach (@_){
		if($_ > $result){
			$result = $_;
		}
	}
	$result;
}

# 	say '&max2(3,5,10,4,6) = '.&max2(3,5,10,4,6);
# 			================================================================================
# 			2018年7月29日 23:06:50
# 			~/Desktop/chapter04subfunction.pl
# 			--------------------------------------------------------------------------------
# 			&max2(3,5,10,4,6) = 10