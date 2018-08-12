#! /usr/bin/perl
use 5.010;
use strict;
use warnings;

$_ = "He's out bowling with Barney tonight.";
s/Barney/Fred/;
say $_;
# 			192:Desktop zhengjun$ perl chapter09process_text.pl 
# 			He's out bowling with Fred tonight.

s/with (\w+)/against $1's team/;
say $_;
# 				192:Desktop zhengjun$ perl chapter09process_text.pl 
# 				He's out bowling against Fred's team tonight.

$_ = "green scaly dinosaur";
s/(\w+) (\w+)/$2 $1/;
say $_;
# 			scaly green dinosaur
s/^/huge,/;
say $_;
s/,.*een//;
say $_;
s/green/red/;
say $_;
s/\w+$/($`!)$&$'/;
say $_;
s/\s+(!\W+)/$1 /;
say $_;
s/huge/gigantic/;
say $_;
# 			scaly green dinosaur
# 			huge,scaly green dinosaur
# 			huge dinosaur
# 			huge dinosaur
# 			huge (huge !)dinosaur
# 			huge (huge!) dinosaur
# 			gigantic (huge!) dinosaur

$_ = "home,sweet home!";
s/home/cave/g;
say $_;
# 			cave,sweet cave!

$_ = "Input   data\t may have       extra whitspace.";
s/\s+/ /g;
say $_;
# 			Input data may have extra whitspace.

$_ = '654 321';
if(s/([0-9]{3})/***/){
	say "$1";
}
# 			654
$_ = '654 321';
if(s/([0-9]{3})/***/g){
	say "$1";
}
# 			321

my $original = 'Fred ate 1 rib';
my $copy = $original;
$copy =~ s/\d+ ribs?/10 ribs/;
say $original;
say $copy;
# 			Fred ate 1 rib
# 			Fred ate 10 ribs

$_ = "I saw Barney with Fred";
s/(fred|barney)/\U$1/gi;
say $_;
# 				I saw BARNEY with FRED
s/(fred|barney)/\L$1/gi;
say $_;
# 				I saw barney with fred
s/(fred|barney)/\u$1/gi;
say $_;
# 				I saw Barney with Fred
s/(fred|barney)/\l$1/gi;
say $_;
# 				I saw barney with fred
s/(fred|barney)/\u\L$1/gi;
say $_;
# 				I saw Barney with Fred
s/(fred|barney)/\l\U$1/gi;
say $_;
# 				I saw bARNEY with fRED

say "Hello,\u\L$1,would you like to play a game?";
#                Hello,Fred,would you like to play a game?

say "Hello,\u\L$1\E,would you like to play a game?";
#                Hello,Fred,would you like to play a game?


#split操作符
my @fields = split /:/,"abc:def:gh:ijk";
say "@fields";
#                abc def gh ijk
@fields = split ':',"abc:def:gh:ijk";
say "@fields";
#                abc def gh ijk

#两个分隔符连在一起产生一个空字段
@fields = split /:/,"abc:def::gh:ijk";
say "@fields";
#                abc def  gh ijk

#开头保留空字段，结尾省略空字段
@fields = split /:/,":::abc:def::gh:ijk:::::";
say "@fields";
#                   abc def  gh ijk

#使用/\s+/切分数据 \s匹配whitespace、制表符、换行符等空白字符
@fields = split /\s+/,"This is a\tperl\ndocument.\n";
say "@fields";
#                This is a perl document.

#split函数单独使用匹配$_
$_ = "This is a\tperl\ndocument.\n";
@fields = split;
say "@fields";
#                This is a perl document.


#join函数
my $res = join ":",0x4a,0x5e,0x6d,0xc0,0x70,0xb9,0xc0,0x90;
say $res;
$res = join ":","4a","5e","6d","c0","70","b9","c0","90";
say $res;
#                74:94:109:192:112:185:192:144
#                4a:5e:6d:c0:70:b9:c0:90
@fields = split /:/,$res;
say "@fields";
#                4a 5e 6d c0 70 b9 c0 90
$res = join "-",@fields;
say $res;
#                4a-5e-6d-c0-70-b9-c0-90
@fields = split /-/,$res;
say "@fields";
#                4a 5e 6d c0 70 b9 c0 90
$res = join ':',@fields;
say $res;
#                4a:5e:6d:c0:70:b9:c0:90
#split函数的第一个参数是一个字符串，而非一个正则表达式


#列表上下文 / 标量上下文
$_ = "Hello there, neighbour!";
my ($fr,$se,$th) = /(\w+) (\w+), (\w+)/;
say "\u$se is my $th.";
#                There is my neighbour.

$_ = "Fred dropped a 5 ton granite block on Mr.Slate";
@fields = /[a-z]+/ig;
say "Result:@fields";
#                Result:Fred dropped a ton granite block on Mr Slate

my $data = "Barney Rubble Fred Flintstone Wilma Flintstone";
my %hash = ($data =~ /(\w+)\s+(\w+)/g);
foreach my $key (keys %hash){
    say "$key => $hash{$key}";
}
#                Fred => Flintstone
#                Wilma => Flintstone
#                Barney => Rubble

#非贪婪量词
$_ = "I'm talking about the cartoon with Fred and <BOLD>Wilma</BOLD>!";
s/<BOLD>(.*)<\/BOLD>/$1/;
say $_;
#                I'm talking about the cartoon with Fred and Wilma!

$_ = "I'm talking about the cartoon with Fred and <BOLD>Velma</BOLD>, not <BOLD>Wilma</BOLD>!";
s/<BOLD>(.*)<\/BOLD>/$1/g;
say $_;
#                I'm talking about the cartoon with Fred and Velma</BOLD>, not <BOLD>Wilma!

$_ = "I'm talking about the cartoon with Fred and <BOLD>Velma</BOLD>, not <BOLD>Wilma</BOLD>!";
s/<BOLD>(.*?)<\/BOLD>/$1/g;
say $_;
#                I'm talking about the cartoon with Fred and Velma, not Wilma!

#跨行匹配
$_ = "I'm much better\nthan Barney is\nat bowling,\nWilma.\n";
if (/^Wilma\b/im) {
    say "Found wilma at start of line.";#Found wilma at start of line.
    say /^Wilma\b/im;#1
}

my $file = 'poet';
open FILE,$file;
my $lines = join ' ',<FILE>;
$lines =~ s/^/$file: /gm;
say $lines;
#                poet: 吾家洗砚池头树，个个花开淡墨痕。
#                poet:  不要人夸好颜色，只流清气满乾坤。(版本一)
#                poet:
#                poet:  我家洗砚池边树，朵朵花开淡墨痕。
#                poet:  不要人夸颜色好，只留清气满乾坤。(版本二)
