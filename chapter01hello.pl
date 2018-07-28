#!/usr/bin/perl

use 5.010;

print "Hello,world!\n";
# 192:Desktop zhengjun$ perl hello.plx 
# Hello,world!

say "Hello,Perl!";
say "Hello,Perl2!";
# 192:Desktop zhengjun$ perl hello.plx 
# Hello,world!
# Hello,Perl!
# Hello,Perl2!

# 井号代表行注释
# 每一句结尾都必须用分号结束，包括use导入语句
# say方法相当于java的println

print # 这里是注释,井号之后的内容直接被忽略。分号才是一行代码的真正结尾
"Hello,comments!\n"
;
# Hello,comments!
