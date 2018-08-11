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
if(!defined($1)){
	say '$1 undefined!';
}
# $1并非未定义

my $wilma = '123';
$wilma =~ /(\d+)/;
say '$1 = '."$1";
$wilma =~ /(\w+)/a;
say '$1 = '."$1";
# 			$1 = 123
# 			$1 = 123

my $wilma = 'audi q3';
$wilma =~ /(\d+)/;
say '$1 = '."$1";
$wilma =~ /(\w+)/a;
say '$1 = '."$1";
# 			$1 = 3
# 			$1 = audi

my $wilma = '3.141592654';
$wilma =~ /(\d+)/;
say '$1 = '."$1";
$wilma =~ /(\w+)/a;
say '$1 = '."$1";
# 			$1 = 3
# 			$1 = 3

my $wilma = '3.141592654';
$wilma =~ /(\d+)/;
say '$1 = '."$1";
$wilma =~ /(\[A-Za-z]+)/;
say '$1 = '."$1";
# 			$1 = 3
# 			$1 = 3 未匹配到字符，保留上次结果

my $names = "Fred or Barney";
if($names =~ m/(\w+) (?:and|or) (\w+)/){
	say "I saw $1 and $2";
}
# 			I saw Fred and Barney

my $names = "Fred or Barney";
if($names =~ m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/){  #这种把捕获的变量存入%+的做法是5.010之后才有的
	say "I saw $+{name2} and $+{name1}";
}
# 			I saw Barney and Fred

$names = "Fred Flintstone and Wilma Flintstone";
if($names =~ m/(?<last_name>\w+) and \w+ \g{last_name}/){
	say "I saw the $+{last_name}s";
}
# 			I saw the Flintstones
# 单个\w只能匹配一个字符（大小写字母、数字、下划线）
# 标签名属于纯字符串，不是标量变量

if("Hello there, neighbor" =~ /\s(\w+),/){
	say "That actually matched '$&' .";
}
# 			That actually matched ' there,' .
use 5.014;
$_ = '123 456';
if(/(\d+)/){
	say '$1 = '."$1";
	say "That was (${^PREMATCH})(${^MATCH})(${^POSTMATCH})";
	say "That was ($`)($&)($')";
}
# 			$1 = 123
# 			That was ()(123)( 456)

my $num = '17681821398';
if($num =~ /1\d{10}/){
	say "$& 是一个手机号";
}
# 			17681821398 是一个手机号