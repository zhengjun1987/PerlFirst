#!/usr/bin/perl
use 5.010;

say 'fred';
say 'barney';
say '';
say '日照香炉生紫烟，❉の�';
say 'Don\'t let a apostrophe end this string prematurely!';
say 'The last character is a backslash:\\';
say 'hello\n';
say 'hello
there!';
say '\'\\';
# 192:Desktop zhengjun$ ./chapter02string.pl 
# fred
# barney
# 
# 日照香炉生紫烟，❉の�
# Don't let a apostrophe end this string prematurely!
# The last character is a backslash:\
# hello\n
# hello
# there!
# '\


say "\x(2668)";

say "Hello"." "."World";
say "hello world"."\n";
# Hello World
# hello world
# 

say "zhengjun"x3;
say "❉花与剑"x(6+6);
say 5*4.8;
# zhengjunzhengjunzhengjun
# ❉花与剑❉花与剑❉花与剑❉花与剑❉花与剑❉花与剑❉花与剑❉花与剑❉花与剑❉花与剑❉花与剑❉花与剑
# 24
say 6x5
# 66666
