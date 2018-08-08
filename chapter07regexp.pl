#! /usr/bin/perl
use 5.010;
$_ = 'yabba dabba doo';
if(/abba/){
	print "It matched!\n";
}
# 		================================================================================
# 		2018年8月7日 22:46:29
# 		~/Desktop/chapter07regexp.pl
# 		--------------------------------------------------------------------------------
# 		It matched!

if(/\p{SPACE}/){
	print "The string has some white spaces!\n";
}
# 		================================================================================
# 		2018年8月7日 22:55:44
# 		~/Desktop/chapter07regexp.pl
# 		--------------------------------------------------------------------------------
# 		The string has some white spaces!

if(/(.)\1/){
	print "有重复字符\n";
}
# 		================================================================================
# 		2018年8月7日 23:35:58
# 		~/Desktop/chapter07regexp.pl
# 		--------------------------------------------------------------------------------
# 		有重复字符


if(/y(....) d\1/){
	print 'y(....) d\1匹配成功'."\n";
}

if(/(((.)(.)\3\2) d)\1/){
	print '((.)(.)\3\2) d)\1匹配成功'."\n";
}
# y(....) d\1匹配成功