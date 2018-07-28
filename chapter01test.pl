#!/usr/bin/perl
@lines =`perldoc -uf atan2`;# 反引号在美式键盘数字1的左边
foreach(@lines) {
	s/\w<([^>]+)>/\U$1/g;# 这句话的意思好像是把所有的尖括号删除，并把尖括号中的内容转换成大写
	print;# 把每一行打印出来
}
# 192:Desktop zhengjun$ ./test.plx 
# =over 8
# 
# =item atan2 Y,X
# ATAN2 ARCTANGENT TAN TANGENT
# 
# =for Pod::Functions arctangent of Y/X in the range -PI to PI
# 
# Returns the arctangent of Y/X in the range -PI to PI.
# 
# For the tangent operation, you may use the MATH::TRIG::TAN
# function, or use the familiar relation:
# 
#     sub tan { sin($_[0]) / cos($_[0])  }
# 
# The return value for ATAN2(0,0) is implementation-defined; consult
# your atan2(3) manpage for more information.
# 
# Portability issues: PERLPORT/ATAN2.
# 
# =back