#! /usr/bin/perl
use 5.012;

# 	my $input = undef;
# 	while(defined($input = <STDIN>)){
# 		print "I see $input";
# 	}
# 
# 			192:Desktop zhengjun$ ./chapter05io.pl 
# 			是谁，在敲打我 窗
# 			I see 是谁，在敲打我窗
# 
# 			是谁，在撩动 琴弦
# 			I see 是谁，在撩琴弦
# 
# 			^Z
# 			[1]+  Stopped                 ./chapter05io.pl

# 	while (defined($_ = <STDIN>)){
# 		print "I saw $_";
# 	}
# 			192:Desktop zhengjun$ ./chapter05io.pl 
# 			2018年08月01日23:44:54
# 			I saw 2018年08月01日23:44:54
# 			请允许我尘埃落定
# 			I saw 请允许我尘埃落定
# 			用沉默埋葬了过去
# 			I saw 用沉默埋葬了过去
# 			千言万语只能无语
# 			I saw 千言万语只能无语
# 			为什么我用尽全身力气只换来半生回忆
# 			I saw 为什么我用尽全身力气只换来半生回忆
# 			原来你也在这里
# 			I saw 原来你也在这里
# 
# 			I saw 
# 			^Z
# 			[3]+  Stopped                 ./chapter05io.pl

# 	foreach (@_){
# 		print;
# 	}
# 	say "program end."
# 			192:Desktop zhengjun$ ./chapter05io.pl 
# 			program end.
# Perl的foreach所针对的数组可以为空，不像Java

# 	@ARGV = qw(/larry moe culy/);
# 	while (defined ($_ = <>)){
# 		print;
# 	}

# 	my $name = "Larry Wall";
# 	print "Hello there, $name ,did you know that 3+4 is ",3+4,"?\n";
# 			192:PerlFirst zhengjun$ ./chapter05io.pl chapter05io.pl 
# 			Hello there, Larry Wall ,did you know that 3+4 is 7?

# 	my @arr = (1,2,4,5,6);
# 	say "@arr";
# 			192:PerlFirst zhengjun$ ./chapter05io.pl chapter05io.pl 
# 			1 2 4 5 6

# 	my ($user,$days_to_expire) = ("Merlyn",3);
# 	printf "Hello,%s; your password expires in %f days!\n",$user,$days_to_expire;
# 				================================================================================
# 				2018年8月3日 23:12:28
# 				~/Desktop/PerlFirst/chapter05io.pl
# 				--------------------------------------------------------------------------------
# 				Hello,Merlyn; your password expires in 3.000000 days!

# 	printf "%g %g %g\n",2**64,5/2,51/17;
# 					1.84467e+19 2.5 3

# 	printf "%.3g",2**64;
# 				1.84e+19

# 	printf "Monthly interest rate:%.2f%%",5.25/12;
# 			================================================================================
# 			2018年8月3日 23:20:00
# 			~/Desktop/PerlFirst/chapter05io.pl
# 			--------------------------------------------------------------------------------
# 			Monthly interest rate:0.44%

# 	my @items = qw/wilma dino pebble/;
# 	my $format = "The items are :\n".("%10s\n"x@items);
# 	printf $format,@items;
# 			================================================================================
# 			2018年8月3日 23:36:22
# 			~/Desktop/PerlFirst/chapter05io.pl
# 			--------------------------------------------------------------------------------
# 			The items are :
# 				 wilma
# 				  dino
# 				pebble