#! /usr/bin/perl
use 5.010;
# 	$fred[0]="yabba";
# 	$fred[1]="dabba";
# 	$fred[2]="doo";
# 	say $fred[0];
# 	$fred[2] = 'diddley';
# 	$fred[1] .= "whatsis";
# 	say $fred[1];
# 	say $fred[2];
# 	say $fred;
# 	$number = 2.71828;
# 	say $fred[$number -1];
# 			192:Desktop zhengjun$ ./chapter03arrays.pl 
# 			yabba
# 			dabbawhatsis
# 			diddley
# 
# 			dabbawhatsis

# 	$rock[0]='bedrock';
# 	$rock[1]='slate';
# 	$rock[2]='lava';
# 	$rock[3]='crashed rock';
# 	$rock[99]='schist';
# 	say '$#rock = '.$#rock;
# 	while ($index <= $#rock){
# 		if($rock[$index] ne undef){
# 			say "\$rock[$index] = ".$rock[$index];
# 		}
# 		$index += 1;
# 	}
# 			192:Desktop zhengjun$ ./chapter03arrays.pl 
# 			$#rock = 99
# 			$rock[] = bedrock
# 			$rock[1] = slate
# 			$rock[2] = lava
# 			$rock[3] = crashed rock
# 			$rock[99] = schist

# 	@rocks = qw{ bedrock slate lava };
# 	say @rocks;
# 			192:Desktop zhengjun$ ./chapter03arrays.pl 
# 			bedrockslatelava

# 	@array = qw( dino fred barney );
# 	$m = shift(@array);
# 	$n = shift @array;
# 	say "\$m = ".$m;
# 	say '$n = '.$n;
# 	shift @array;
# 	$o = shift @array;
# 	say "\$o = ".$o;
# 	unshift(@array, 5);
# 	unshift (@array, 4);
# 	unshift (@array, 1..3);
# 	say '@array = '."@array";
# 			192:Desktop zhengjun$ ./chapter03arrays.pl 
# 			$m = dino
# 			$n = fred
# 			$o = 
# 			@array = 1 2 3 4 5

# 	@rocks = qw( flintstone slate burble );
# 	say "quartz @rocks limestone";
# 			quartz flintstone slate burble limestone

# 	@array = 1..5;
# 	say $array;
# 	say "$array";
# 	say @array;
# 	say "@array";
# 			192:Desktop zhengjun$ ./chapter03arrays.pl 
# 
# 
# 			12345
# 			1 2 3 4 5

# 	@fred = qw(eating rock is wrong);
# 	$fred = "right";
# 	say "This is $fred[3]";
# 	say "This is ${fred}[3]";
# 	say "This is $fred"."[3]";
# 	say "This is $fred\[3\]";
# 			This is wrong
# 			This is right[3]
# 			This is right[3]
# 			This is right[3]

# 	foreach $rock (qw/bedrock slate lava/){
# 		say "One rock is $rock.";
# 	}
# 			================================================================================
# 			2018年7月29日 12:39:52
# 			~/Desktop/chapter03arrays.pl
# 			--------------------------------------------------------------------------------
# 			One rock is bedrock.
# 			One rock is slate.
# 			One rock is lava.

# 	@rocks = qw(bedrock slate lava);
# 	foreach $rock (@rocks){
# 		$rock = "\t$rock";
# 		$rock .= "\n";
# 	}
# 	print "The rocks are:\n",@rocks;
# 			================================================================================
# 			2018年7月29日 15:28:44
# 			~/Desktop/chapter03arrays.pl
# 			--------------------------------------------------------------------------------
# 			The rocks are:
# 				bedrock
# 				slate
# 				lava

# 	$rock = 'whale';
# 	@rocks = qw(bedrock slate lava);
# 	foreach $rock (@rocks){
# 		say '$rock = '.$rock;
# 	}
# 	say "============after the loop============\n".'$rock = '.$rock;
# 
# 			================================================================================
# 			2018年7月29日 15:34:09
# 			~/Desktop/chapter03arrays.pl
# 			--------------------------------------------------------------------------------
# 			$rock = bedrock
# 			$rock = slate
# 			$rock = lava
# 			============after the loop============
# 			$rock = whale

# 	foreach (1..10){
# 		say "I can count to  $_!";
# 	}
# 			================================================================================
# 			2018年7月29日 15:40:12
# 			~/Desktop/chapter03arrays.pl
# 			--------------------------------------------------------------------------------
# 			I can count to  1!
# 			I can count to  2!
# 			I can count to  3!
# 			I can count to  4!
# 			I can count to  5!
# 			I can count to  6!
# 			I can count to  7!
# 			I can count to  8!
# 			I can count to  9!
# 			I can count to  10!

# 	foreach (qw/牧童骑黄牛 歌声振林樾 意欲捕鸣蝉 忽然闭口立/){
# 		say;
# 	}
# 			================================================================================
# 			2018年7月29日 15:47:01
# 			~/Desktop/chapter03arrays.pl
# 			--------------------------------------------------------------------------------
# 			牧童骑黄牛
# 			歌声振林樾
# 			意欲捕鸣蝉
# 			忽然闭口立

# 	foreach (reverse 1..10){
# 		say;
# 	}
# 			================================================================================
# 			2018年7月29日 15:50:56
# 			~/Desktop/chapter03arrays.pl
# 			--------------------------------------------------------------------------------
# 			10
# 			9
# 			8
# 			7
# 			6
# 			5
# 			4
# 			3
# 			2
# 			1

# 	foreach (sort qw/bedrock slate rubble grantie/){
# 		say;
# 	}
# 
# 			================================================================================
# 			2018年7月29日 15:54:36
# 			~/Desktop/chapter03arrays.pl
# 			--------------------------------------------------------------------------------
# 			bedrock
# 			grantie
# 			rubble
# 			slate

# 	foreach (sort 97..102){
# 		say;
# 	}
# 
# 			================================================================================
# 			2018年7月29日 15:56:50
# 			~/Desktop/chapter03arrays.pl
# 			--------------------------------------------------------------------------------
# 			100
# 			101
# 			102
# 			97
# 			98
# 			99

# 	@people = qw(fred barney betty);
# 	say @people;
# 	say "@people";
# 	@rev = reverse (sort @people);
# 	say "@rev";
# 	$num = 42+@people;
# 	say $num;
# 	$num = "42".@people;
# 	say $num;
# 			================================================================================
# 			2018年7月29日 16:15:33
# 			~/Desktop/chapter03arrays.pl
# 			--------------------------------------------------------------------------------
# 			fredbarneybetty
# 			fred barney betty
# 			fred betty barney
# 			45
# 			423

# 	chomp(@lines = <STDIN>);
# 	foreach (@lines){
# 		say;
# 	}
# 
# 			192:~ zhengjun$ ./Desktop/chapter03arrays.pl
# 			逍遥叹
# 			岁月难得沉默
# 			秋风厌倦漂泊^D
# 			逍遥叹
# 			岁月难得沉默
# 			秋风厌倦漂泊
