#! /usr/bin/perl
use 5.010;

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